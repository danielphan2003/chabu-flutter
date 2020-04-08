import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => HomeState.loading();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.when(
      setup: mapSetupToState,
    );
  }

  Stream<HomeState> mapSetupToState(Setup e) async * {
    yield HomeState.loaded();
  }
}
