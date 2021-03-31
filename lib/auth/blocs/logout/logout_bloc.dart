import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/services/auth_service.dart';

part 'logout_bloc.freezed.dart';
part 'logout_event.dart';
part 'logout_state.dart';

@injectable
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthService _authService;
  final UserBloc _userBloc;

  LogoutBloc(
    this._authService,
    this._userBloc,
  ) : super(_Initial());

  @override
  Stream<LogoutState> mapEventToState(LogoutEvent gEvent) async* {
    yield* gEvent.when(
      logout: _logout,
    );
  }

  Stream<LogoutState> _logout() async* {
    yield LogoutState.loading();

    await _authService.logout();
    _userBloc.add(UserEvent.clearUser());

    yield LogoutState.success();
  }
}
