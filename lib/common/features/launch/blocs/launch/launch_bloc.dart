import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/auth/services/auth_service.dart';

part 'launch_state.dart';
part 'launch_event.dart';
part 'launch_bloc.freezed.dart';

@injectable
class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  final AuthService _authService;
  final UserBloc _userBloc;

  LaunchBloc(
    this._authService,
    this._userBloc,
  ) : super(const _Initial());

  @override
  Stream<LaunchState> mapEventToState(LaunchEvent event) async* {
    yield* event.when(
      launch: () async* {
        yield const LaunchState.loading();

        await Future.delayed(const Duration(seconds: 3));
        final User? user = _authService.getCurrentUser();

        if (user != null) {
          _userBloc.add(UserEvent.setUser(user));
          yield const LaunchState.authenticated();
        } else {
          yield const LaunchState.notAuthenticated();
        }
      },
    );
  }
}
