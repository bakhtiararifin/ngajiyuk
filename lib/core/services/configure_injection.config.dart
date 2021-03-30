// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../../auth/blocs/logout/logout_bloc.dart' as _i16;
import '../../auth/blocs/user/user_bloc.dart' as _i10;
import '../../auth/features/login/blocs/login/login_bloc.dart' as _i15;
import '../../auth/services/auth_service.dart' as _i11;
import '../../common/features/launch/blocs/launch/launch_bloc.dart' as _i12;
import '../../lesson/blocs/lesson/lesson_bloc.dart' as _i13;
import '../../lesson/blocs/lesson_items/lesson_items_bloc.dart' as _i14;
import '../../lesson/blocs/lessons/lessons_bloc.dart' as _i9;
import '../../lesson/repositories/learning_repository.dart' as _i7;
import '../../lesson/repositories/lesson_repository.dart' as _i8;
import 'register_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseAnalytics>(() => registerModule.analytics);
  gh.lazySingleton<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => registerModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(() => registerModule.googleSignIn);
  gh.lazySingleton<_i7.LearningRepository>(
      () => _i7.LearningRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i8.LessonRepository>(
      () => _i8.LessonRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i9.LessonsBloc>(
      () => _i9.LessonsBloc(get<_i8.LessonRepository>()));
  gh.lazySingleton<_i10.UserBloc>(() => _i10.UserBloc());
  gh.lazySingleton<_i11.AuthService>(
      () => _i11.AuthService(get<_i4.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.factory<_i12.LaunchBloc>(
      () => _i12.LaunchBloc(get<_i11.AuthService>(), get<_i10.UserBloc>()));
  gh.lazySingleton<_i13.LessonBloc>(() =>
      _i13.LessonBloc(get<_i7.LearningRepository>(), get<_i10.UserBloc>()));
  gh.lazySingleton<_i14.LessonItemsBloc>(
      () => _i14.LessonItemsBloc(get<_i8.LessonRepository>()));
  gh.factory<_i15.LoginBloc>(
      () => _i15.LoginBloc(get<_i11.AuthService>(), get<_i10.UserBloc>()));
  gh.factory<_i16.LogoutBloc>(() => _i16.LogoutBloc(get<_i11.AuthService>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
