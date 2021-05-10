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
        .orderBy('index', descending: false)
        .snapshots();

    return lessonsStream.map((QuerySnapshot snapshot) {
      return snapshot.docs.map((QueryDocumentSnapshot doc) {
        final data = doc.data();
        return Lesson(
          id: doc.id,
          title: data['title'],
          thumbnailUrl: data['thumbnailUrl'],
          description: data['description'],
          prerequisite: data['prerequisite'],
          price: data['price'],
          discount: data['discount'],
        );
      }).toList();
    });
  }

  Stream<List<LessonItem>> getLessonItems(Lesson lesson) {
    final lessonItemsStream = _firestore
        .collection('lessons')
        .doc(lesson.id)
        .collection('lessonItems')
        .orderBy('index', descending: false)
        .snapshots();

    return lessonItemsStream.map((QuerySnapshot snapshot) {
      List<LessonItem> lessonItems = [];
      for (final QueryDocumentSnapshot doc in snapshot.docs) {
        final data = doc.data();

        lessonItems.add(LessonItem(
          id: doc.id,
          index: data['index'],
          title: data['title'],
          youtubeId: data['youtubeId'],
          videoUrl: data['videoUrl'],
        ));
      }

      return lessonItems;
    });
  }

  Future<Lesson> getLesson(String id) async {
    final DocumentSnapshot doc =
        await _firestore.collection('lessons').doc(id).get();
    final data = doc.data();
    return Lesson(
      id: doc.id,
      title: data?['title'],
      thumbnailUrl: data?['thumbnailUrl'],
      description: data?['description'],
      prerequisite: data?['prerequisite'],
      price: data?['price'],
      discount: data?['discount'],
    );
  }
}
