// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent(this._type);

  factory HomeEvent.setup() = Setup;

  final _HomeEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(Setup) setup}) {
    assert(() {
      if (setup == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeEvent.Setup:
        return setup(this as Setup);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>({@required FutureOr<R> Function(Setup) setup}) {
    assert(() {
      if (setup == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeEvent.Setup:
        return setup(this as Setup);
    }
  }

  R whenOrElse<R>(
      {R Function(Setup) setup, @required R Function(HomeEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeEvent.Setup:
        if (setup == null) break;
        return setup(this as Setup);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Setup) setup,
      @required FutureOr<R> Function(HomeEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeEvent.Setup:
        if (setup == null) break;
        return setup(this as Setup);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial({FutureOr<void> Function(Setup) setup}) {
    assert(() {
      if (setup == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeEvent.Setup:
        if (setup == null) break;
        return setup(this as Setup);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Setup extends HomeEvent {
  const Setup._() : super(_HomeEvent.Setup);

  factory Setup() {
    _instance ??= const Setup._();
    return _instance;
  }

  static Setup _instance;
}
