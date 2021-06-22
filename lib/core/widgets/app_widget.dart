import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/common/features/launch/blocs/launch/launch_bloc.dart';
import 'package:ngajiyuk/common/features/launch/widgets/launch_page.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getDefaultTheme(context),
      home: BlocProvider<LaunchBloc>(
        create: (context) =>
            getIt<LaunchBloc>()..add(const LaunchEvent.launch()),
        child: LaunchPage(),
      ),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: getIt<FirebaseAnalytics>()),
      ],
    );
  }
}
