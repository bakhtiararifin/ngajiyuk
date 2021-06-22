import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/widgets/app_widget.dart';
import 'package:ngajiyuk/core/widgets/global_bloc_provider.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('id_ID');
  await Firebase.initializeApp();
  await configureInjection();
  await dotenv.load();

  await OneSignal.shared.setAppId(dotenv.env['ONESIGNAL_APP_ID'] ?? '');

  return runZonedGuarded(() async {
    await SentryFlutter.init(
      (options) => options
        ..dsn = dotenv.env['SENTRY_DSN']
        ..environment = dotenv.env['ENVIRONMENT'],
      appRunner: () => runApp(
        GlobalBlocProvider(
          child: AppWidget(),
        ),
      ),
    );
  }, (error, stack) {
    if (dotenv.env['ENVIRONMENT'] != 'development') {
      Sentry.captureException(error, stackTrace: stack);
    }
  });
}
