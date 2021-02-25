import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'launch_state.dart';
part 'launch_event.dart';
part 'launch_bloc.freezed.dart';

@injectable
class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {

  LaunchBloc() : super(_Initial());

  @override
  Stream<LaunchState> mapEventToState(LaunchEvent event) async* {
    yield* event.when(
      launch: () async* {
        yield LaunchState.loading();

        await Future.delayed(Duration(seconds: 3));
        yield LaunchState.success();
      },
    );
  }
}
