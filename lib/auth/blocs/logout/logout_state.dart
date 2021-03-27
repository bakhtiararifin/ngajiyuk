part of 'logout_bloc.dart';

@freezed
abstract class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.loading() = _Loading;
  const factory LogoutState.success() = _Success;
  const factory LogoutState.error() = _Error;
}
