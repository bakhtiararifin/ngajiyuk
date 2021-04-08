part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.setUser(User user) = _SetUser;
  const factory UserEvent.clearUser() = _ClearUser;
}
