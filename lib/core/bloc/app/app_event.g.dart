// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class AppEvent extends Equatable {
  const AppEvent(this._type);

  factory AppEvent.setup() = Setup;

  final _AppEvent _type;

//ignore: missing_return
  R when<R>({@required R Function(Setup) setup}) {
    assert(() {
      if (setup == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AppEvent.Setup:
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
      case _AppEvent.Setup:
        return setup(this as Setup);
    }
  }

  R whenOrElse<R>(
      {R Function(Setup) setup, @required R Function(AppEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AppEvent.Setup:
        if (setup == null) break;
        return setup(this as Setup);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Setup) setup,
      @required FutureOr<R> Function(AppEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AppEvent.Setup:
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
      case _AppEvent.Setup:
        if (setup == null) break;
        return setup(this as Setup);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Setup extends AppEvent {
  const Setup._() : super(_AppEvent.Setup);

  factory Setup() {
    _instance ??= const Setup._();
    return _instance;
  }

  static Setup _instance;
}
