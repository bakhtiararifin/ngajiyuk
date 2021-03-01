// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/features/launch/blocs/launch/launch_bloc.dart' as _i5;
import '../../lesson/blocs/lessons/lessons_bloc.dart' as _i7;
import '../../lesson/repositories/lesson_repository.dart' as _i6;
import 'register_module.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseAnalytics>(() => registerModule.analytics);
  gh.lazySingleton<_i4.FirebaseFirestore>(() => registerModule.firestore);
  gh.factory<_i5.LaunchBloc>(() => _i5.LaunchBloc());
  gh.lazySingleton<_i6.LessonRepository>(
      () => _i6.LessonRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i7.LessonsBloc>(
      () => _i7.LessonsBloc(get<_i6.LessonRepository>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
