import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/home_page.dart';
import 'package:ngajiyuk/common/features/launch/blocs/launch/launch_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';

class LaunchPage extends StatefulWidget {
  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  void initState() {
    getIt<FirebaseAnalytics>().setCurrentScreen(screenName: 'LaunchPage');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LaunchBloc, LaunchState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () => _gotoHome(context),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
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
    BlocProvider.of<LessonsBloc>(context).add(LessonsEvent.getLessons());

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return HomePage();
        },
      ),
    );
  }
}
