import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/auth/blocs/logout/logout_bloc.dart';
import 'package:ngajiyuk/auth/features/login/blocs/login/login_bloc.dart';
import 'package:ngajiyuk/auth/features/login/widgets/login_page.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/home_page.dart';
import 'package:ngajiyuk/common/features/launch/blocs/launch/launch_bloc.dart';
import 'package:ngajiyuk/common/services/dynamic_link_service.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/repositories/lesson_repository.dart';

class LaunchPage extends StatefulWidget {
  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  void initState() {
    super.initState();
    getIt<FirebaseAnalytics>().logEvent(name: 'LaunchPage');
    getIt<DynamicLinkService>().initDynamicLinks((path, queryParameters) async {
      if (path == '/lesson' && queryParameters['id'] != null) {
        final Lesson lesson = await getIt<LessonRepository>().getLesson(
          queryParameters['id']!,
        );
        _gotoHome(context);
        _gotoLesson(context, lesson);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LaunchBloc, LaunchState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: () => _gotoHome(context),
          notAuthenticated: () => _gotoLogin(context),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              height: 160,
              width: 160,
            ),
          ),
        );
      },
    );
  }

  void _gotoHome(BuildContext context) {
    BlocProvider.of<LessonsBloc>(context).add(const LessonsEvent.getLessons());

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider<LogoutBloc>(create: (_) => getIt<LogoutBloc>()),
          ],
          child: HomePage(),
        ),
      ),
    );
  }

  void _gotoLesson(BuildContext context, Lesson lesson) {
    BlocProvider.of<LessonBloc>(context).add(
      LessonEvent.setLesson(lesson),
    );

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LessonPage()),
    );
  }

  void _gotoLogin(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return BlocProvider<LoginBloc>(
            create: (_) => getIt<LoginBloc>(),
            child: LoginPage(),
          );
        },
      ),
    );
  }
}
