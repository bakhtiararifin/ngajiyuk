import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/account_tab.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/home_tab.dart';
import 'package:ngajiyuk/common/services/dynamic_link_service.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/repositories/lesson_repository.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentNavBarIndex = 0;

  @override
  void initState() {
    super.initState();
    getIt<FirebaseAnalytics>().logEvent(name: 'HomePage');
    getIt<DynamicLinkService>().initDynamicLinks((path, queryParameters) async {
      if (path == '/lesson' && queryParameters['id'] != null) {
        final Lesson lesson = await getIt<LessonRepository>().getLesson(
          queryParameters['id']!,
        );
        _gotoLesson(context, lesson);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ngajiyuk'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _currentNavBarIndex,
        onTap: _onNavBarTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white.withAlpha(160),
      ),
      body: _buildBody(),
    );
  }

  void _onNavBarTap(int index) {
    setState(() {
      _currentNavBarIndex = index;
    });
  }

  Widget _buildBody() {
    if (_currentNavBarIndex == 0) {
      return HomeTab();
    } else {
      return AccountTab();
    }
  }

  void _gotoLesson(BuildContext context, Lesson lesson) {
    BlocProvider.of<LessonBloc>(context).add(
      LessonEvent.setLesson(lesson),
    );

    Navigator.of(context).popUntil((route) => route.isFirst);

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LessonPage()),
    );
  }
}
