import 'package:ngajiyuk/common/features/launch/blocs/launch/launch_bloc.dart';
import 'package:ngajiyuk/common/features/launch/widgets/launch_page.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.getDefaultTheme(context),
      home: BlocProvider<LaunchBloc>(
        create: (context) => getIt<LaunchBloc>()..add(LaunchEvent.launch()),
        child: LaunchPage(),
      ),
    );
  }
}