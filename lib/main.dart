import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/widgets/app_widget.dart';
import 'package:ngajiyuk/core/widgets/global_bloc_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('id_ID', null);
  await Firebase.initializeApp();
  await configureInjection();

  return runZonedGuarded(() async {
    runApp(
      GlobalBlocProvider(
        child: AppWidget(),
      ),
    );
  }, (error, stack) {
    print(stack);
    print(error);
  });
}
