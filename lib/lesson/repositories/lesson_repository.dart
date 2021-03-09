import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

@lazySingleton
class LessonRepository {
  final FirebaseFirestore _firestore;

  LessonRepository(this._firestore);

  Stream<List<Lesson>> getLessons() {
    final lessonsStream = _firestore
        .collection('lessons')
        .orderBy('title', descending: false)
        .snapshots();

    return lessonsStream.map((QuerySnapshot snapshot) {
      return snapshot.docs.map((QueryDocumentSnapshot doc) {
        final data = doc.data();
        return Lesson(
          id: doc.id,
          title: data['title'],
          thumbnailUrl: data['thumbnailUrl'],
        );
      }).toList();
    });
  }

  Stream<List<LessonItem>> getLessonItems(Lesson lesson) {
    final lessonItemsStream = _firestore
        .collection('lessons')
        .doc(lesson.id)
        .collection('lessonItems')
        .orderBy('title', descending: false)
        .snapshots();

    return lessonItemsStream.map((QuerySnapshot snapshot) {
      return snapshot.docs.map((QueryDocumentSnapshot doc) {
        final data = doc.data();
        return LessonItem(
          id: doc.id,
          title: data['title'],
          youtubeId: data['youtubeId'],
        );
      }).toList();
    });
  }
}
