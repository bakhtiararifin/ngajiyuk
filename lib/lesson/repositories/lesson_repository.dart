import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class LessonRepository {
  final FirebaseFirestore _firestore;

  LessonRepository(this._firestore);

  Stream<List<Lesson>> getLessons() {
    final lessonsStream = _firestore.collection('lessons').snapshots();
    final lessonItemsStream = _firestore.collection('lessonItems').snapshots();

    return Rx.combineLatest2(
      lessonsStream,
      lessonItemsStream,
      (QuerySnapshot lessonsSnapshot, QuerySnapshot lessonItemsSnapshot) {
        final lessonsDocs = lessonsSnapshot.docs;
        final lessonItemsDocs = lessonItemsSnapshot.docs;
        List<Lesson> lessons = [];

        for (final lessonDoc in lessonsDocs) {
          final lessonData = lessonDoc.data();
          final lessonItems = lessonItemsDocs.where((lessonItemDoc) {
            return lessonItemDoc.data()['lessonId'] == lessonDoc.id;
          });

          final lesson = Lesson(
            id: lessonDoc.id,
            title: lessonData['title'],
            items: lessonItems.map((lessonItem) {
              final lessonItemData = lessonItem.data();
              return LessonItem(
                id: lessonItem.id,
                title: lessonItemData['title'],
                link: lessonItemData['link'],
              );
            }).toList(),
          );

          lessons.add(lesson);
        }

        return lessons;
      },
    );
  }
}
