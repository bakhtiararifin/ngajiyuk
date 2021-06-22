import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/exceptions/auth_exception.dart';
import 'package:ngajiyuk/auth/services/auth_service.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthService _authService;
  final UserBloc _userBloc;

  LoginBloc(
    this._authService,
    this._userBloc,
  ) : super(const _Initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.when(
      login: () async* {
        yield const LoginState.loading();

        try {
          final user = await _authService.loginWithGoogle();
          _userBloc.add(UserEvent.setUser(user));

          yield const LoginState.success();
        } on AuthException catch (_) {
          yield const LoginState.error();
        }
      },
    );
  }
}
