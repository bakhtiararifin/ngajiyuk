import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getIt<FirebaseAnalytics>().logEvent(name: 'HomePage');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ngajiyuk'),
      ),
      body: BlocBuilder<LessonsBloc, LessonsState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (List<Lesson> lessons) {
              return GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: lessons.map((lesson) => _Lesson(lesson)).toList(),
              );
            },
            orElse: () => Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

class _Lesson extends StatelessWidget {
  final Lesson lesson;

  const _Lesson(
    this.lesson, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => _gotoLessonPage(context),
        child: Center(
          child: Text(
            lesson.title,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }

  void _gotoLessonPage(BuildContext context) {
    BlocProvider.of<LessonItemsBloc>(context).add(
      LessonItemsEvent.getLessonItems(lesson),
    );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LessonPage(lesson),
      ),
    );
  }
}
