import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/common/widgets/loading_page.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_image.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_info.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_items.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({Key? key}) : super(key: key);

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonBloc, LessonState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (Lesson lesson) {
            return Scaffold(
              appBar: AppBar(),
              body: ListView(
                children: [
                  LessonImage(lesson: lesson),
                  LessonInfo(lesson: lesson),
                  LessonItems(),
                ],
              ),
            );
          },
          orElse: () => LoadingPage(),
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    BlocProvider.of<LessonItemsBloc>(context).add(
      LessonItemsEvent.getLessonItems(),
    );

    final lessonBloc = BlocProvider.of<LessonBloc>(context);
    final Lesson? lesson = lessonBloc.state.maybeWhen(
      success: (lesson) => lesson,
      orElse: () => null,
    );

    getIt<FirebaseAnalytics>().logEvent(
      name: 'LessonPage',
      parameters: lesson?.toJson(),
    );

    super.didChangeDependencies();
  }
}
