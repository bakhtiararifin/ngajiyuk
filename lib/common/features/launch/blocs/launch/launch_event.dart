part of 'launch_bloc.dart';

@freezed
abstract class LaunchEvent with _$LaunchEvent {
  const factory LaunchEvent.launch() = _Launch;
}
