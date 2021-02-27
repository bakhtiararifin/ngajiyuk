// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/features/launch/blocs/launch/launch_bloc.dart' as _i4;
import '../../lesson/blocs/lessons/lessons_bloc.dart' as _i6;
import '../../lesson/repositories/lesson_repository.dart' as _i5;
import 'register_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseFirestore>(() => registerModule.firestore);
  gh.factory<_i4.LaunchBloc>(() => _i4.LaunchBloc());
  gh.lazySingleton<_i5.LessonRepository>(
      () => _i5.LessonRepository(get<_i3.FirebaseFirestore>()));
  gh.lazySingleton<_i6.LessonsBloc>(
      () => _i6.LessonsBloc(get<_i5.LessonRepository>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
