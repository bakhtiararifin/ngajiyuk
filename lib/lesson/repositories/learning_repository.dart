import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/lesson/model/learning/learning.dart';
import 'package:ngajiyuk/lesson/model/learning_item/learning_item.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/model/lesson_item/lesson_item.dart';

@lazySingleton
class LearningRepository {
  final FirebaseFirestore _firestore;

  LearningRepository(this._firestore);

  Stream<List<Learning>> getUserLearning(User user) {
    final learningStream = _firestore
        .collection('learnings')
        .where('userId', isEqualTo: user.id)
        .snapshots();

    return learningStream.map((QuerySnapshot snapshot) {
      return snapshot.docs.map((QueryDocumentSnapshot doc) {
        final data = doc.data();
        return Learning(
          id: doc.id,
          userId: data['userId'],
          userName: data['userName'],
          userEmail: data['userEmail'],
          lessonId: data['lessonId'],
          lessonTitle: data['lessonTitle'],
        );
      }).toList();
    });
  }

  Stream<List<LearningItem>> getLearningItems(
    User user,
    Lesson lesson,
  ) {
    final learningItemsStream = _firestore
        .collection('learnings')
        .doc(getLearningId(user, lesson))
        .collection('learningItems')
        .snapshots();

    return learningItemsStream.map((QuerySnapshot snapshot) {
      List<LearningItem> learningItems = [];
      for (final QueryDocumentSnapshot doc in snapshot.docs) {
        final data = doc.data();

        learningItems.add(LearningItem(
          id: doc.id,
          lessonItemId: data['lessonItemId'],
          lessonItemTitle: data['lessonItemTitle'],
          youtubeId: data['youtubeId'],
        ));
      }

      return learningItems;
    });
  }

  Future<void> saveLearning(
    User user,
    Lesson lesson,
  ) async {
    final learning = Learning(
      id: getLearningId(user, lesson),
      userId: user.id,
      userName: user.name,
      userEmail: user.email,
      lessonId: lesson.id,
      lessonTitle: lesson.title,
    );

    final json = learning.toJson();
    json.remove('id');

    await _firestore.collection('learnings').doc(learning.id).set(json);
  }

  Future<void> saveLearningItem(
    User user,
    Lesson lesson,
    LessonItem lessonItem,
  ) async {
    final learningItem = LearningItem(
      id: lessonItem.id,
      lessonItemId: lessonItem.id,
      lessonItemTitle: lessonItem.title,
      youtubeId: lessonItem.youtubeId,
    );

    final json = learningItem.toJson();
    json.remove('id');

    await _firestore
        .collection('learnings')
        .doc(getLearningId(user, lesson))
        .collection('learningItems')
        .doc(lessonItem.id)
        .set(json);
  }

  String getLearningId(User user, Lesson lesson) {
    return '${user.id}${lesson.id}';
  }
}
