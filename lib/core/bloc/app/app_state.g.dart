// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class AppState extends Equatable {
  const AppState(this._type);

  factory AppState.loading() = Loading;

  factory AppState.loaded() = Loaded;

  factory AppState.error() = Error;

  final _AppState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Loading) loading,
      @required R Function(Loaded) loaded,
      @required R Function(Error) error}) {
    assert(() {
      if (loading == null || loaded == null || error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AppState.Loading:
        return loading(this as Loading);
      case _AppState.Loaded:
        return loaded(this as Loaded);
      case _AppState.Error:
        return error(this as Error);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Loading) loading,
      @required FutureOr<R> Function(Loaded) loaded,
      @required FutureOr<R> Function(Error) error}) {
    assert(() {
      if (loading == null || loaded == null || error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AppState.Loading:
        return loading(this as Loading);
      case _AppState.Loaded:
        return loaded(this as Loaded);
      case _AppState.Error:
        return error(this as Error);
    }
  }

  R whenOrElse<R>(
      {R Function(Loading) loading,
      R Function(Loaded) loaded,
      R Function(Error) error,
      @required R Function(AppState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AppState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _AppState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _AppState.Error:
        if (error == null) break;
        return error(this as Error);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Loading) loading,
      FutureOr<R> Function(Loaded) loaded,
      FutureOr<R> Function(Error) error,
      @required FutureOr<R> Function(AppState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AppState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _AppState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _AppState.Error:
        if (error == null) break;
        return error(this as Error);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Loading) loading,
      FutureOr<void> Function(Loaded) loaded,
      FutureOr<void> Function(Error) error}) {
    assert(() {
      if (loading == null && loaded == null && error == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _AppState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _AppState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _AppState.Error:
        if (error == null) break;
        return error(this as Error);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Loading extends AppState {
  const Loading._() : super(_AppState.Loading);

  factory Loading() {
    _instance ??= const Loading._();
    return _instance;
  }

  static Loading _instance;
}

@immutable
class Loaded extends AppState {
  const Loaded._() : super(_AppState.Loaded);

  factory Loaded() {
    _instance ??= const Loaded._();
    return _instance;
  }

  static Loaded _instance;
}

@immutable
class Error extends AppState {
  const Error._() : super(_AppState.Error);

  factory Error() {
    _instance ??= const Error._();
    return _instance;
  }

  static Error _instance;
}
