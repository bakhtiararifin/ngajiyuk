import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/common/features/home/home_page.dart';
import 'package:ngajiyuk/common/features/launch/blocs/launch/launch_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.getDefaultTheme(context),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: getIt<FirebaseAnalytics>()),
      ],
      home: BlocProvider<LaunchBloc>(
        create: (context) {
          return getIt<LaunchBloc>()..add(const LaunchEvent.launch());
        },
        child: const HomePage(),
      ),
    );
  }
}
