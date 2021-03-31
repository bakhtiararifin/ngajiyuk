import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(_Initial());

  @override
  Stream<UserState> mapEventToState(UserEvent gEvent) async* {
    yield* gEvent.when(
      setUser: _setUser,
      clearUser: _clearUser,
    );
  }

  Stream<UserState> _clearUser() async* {
    yield UserState.cleared();
  }

  Stream<UserState> _setUser(User user) async* {
    yield UserState.success(user);
  }
}
