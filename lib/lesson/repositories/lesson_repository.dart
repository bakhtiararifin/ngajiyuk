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

    return lessonsStream.map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return Lesson(
          id: doc.id,
          title: data['title'] as String?,
          thumbnailUrl: data['thumbnailUrl'] as String?,
          description: data['description'] as String?,
          prerequisite: data['prerequisite'] as String?,
          price: data['price'] as int,
          discount: data['discount'] as int,
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

    return lessonItemsStream.map((snapshot) {
      final List<LessonItem> lessonItems = [];
      for (final doc in snapshot.docs) {
        final data = doc.data();
        lessonItems.add(LessonItem(
          id: doc.id,
          index: data['index'] as int,
          title: data['title'] as String?,
          youtubeId: data['youtubeId'] as String?,
          videoUrl: data['videoUrl'] as String?,
        ));
      }

      return lessonItems;
    });
  }

  Future<Lesson> getLesson(String id) async {
    final doc = await _firestore.collection('lessons').doc(id).get();
    final data = doc.data();
    return Lesson(
      id: doc.id,
      title: data?['title'] as String?,
      thumbnailUrl: data?['thumbnailUrl'] as String?,
      description: data?['description'] as String?,
      prerequisite: data?['prerequisite'] as String?,
      price: data?['price'] as int,
      discount: data?['discount'] as int,
    );
  }
}
