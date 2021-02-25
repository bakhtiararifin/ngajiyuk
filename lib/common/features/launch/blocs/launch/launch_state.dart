part of 'launch_bloc.dart';

@freezed
abstract class LaunchState with _$LaunchState {
  const factory LaunchState.initial() = _Initial;
  const factory LaunchState.loading() = _Loading;
  const factory LaunchState.success() = _Success;
  const factory LaunchState.error() = _Error;
}
