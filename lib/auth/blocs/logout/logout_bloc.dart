import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/services/auth_service.dart';

part 'logout_bloc.freezed.dart';
part 'logout_event.dart';
part 'logout_state.dart';

@injectable
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthService _authService;
  LogoutBloc(this._authService) : super(_Initial());

  @override
  Stream<LogoutState> mapEventToState(LogoutEvent gEvent) async* {
    yield* gEvent.when(
      logout: _logout,
    );
  }

  Stream<LogoutState> _logout() async* {
    yield LogoutState.loading();

    await _authService.logout();
    yield LogoutState.success();
  }
}
