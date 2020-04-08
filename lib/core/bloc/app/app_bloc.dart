import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  @override
  AppState get initialState => AppState.loading();

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    yield* event.when(setup: mapSetupToState);
  }

  Stream<AppState> mapSetupToState(Setup e) async *{
    yield AppState.loaded();
  }
}
