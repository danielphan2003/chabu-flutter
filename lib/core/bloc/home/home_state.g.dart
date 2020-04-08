// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class HomeState extends Equatable {
  const HomeState(this._type);

  factory HomeState.loading() = Loading;

  factory HomeState.loaded() = Loaded;

  factory HomeState.error() = Error;

  final _HomeState _type;

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
      case _HomeState.Loading:
        return loading(this as Loading);
      case _HomeState.Loaded:
        return loaded(this as Loaded);
      case _HomeState.Error:
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
      case _HomeState.Loading:
        return loading(this as Loading);
      case _HomeState.Loaded:
        return loaded(this as Loaded);
      case _HomeState.Error:
        return error(this as Error);
    }
  }

  R whenOrElse<R>(
      {R Function(Loading) loading,
      R Function(Loaded) loaded,
      R Function(Error) error,
      @required R Function(HomeState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _HomeState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _HomeState.Error:
        if (error == null) break;
        return error(this as Error);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Loading) loading,
      FutureOr<R> Function(Loaded) loaded,
      FutureOr<R> Function(Error) error,
      @required FutureOr<R> Function(HomeState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _HomeState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _HomeState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _HomeState.Error:
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
      case _HomeState.Loading:
        if (loading == null) break;
        return loading(this as Loading);
      case _HomeState.Loaded:
        if (loaded == null) break;
        return loaded(this as Loaded);
      case _HomeState.Error:
        if (error == null) break;
        return error(this as Error);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Loading extends HomeState {
  const Loading._() : super(_HomeState.Loading);

  factory Loading() {
    _instance ??= const Loading._();
    return _instance;
  }

  static Loading _instance;
}

@immutable
class Loaded extends HomeState {
  const Loaded._() : super(_HomeState.Loaded);

  factory Loaded() {
    _instance ??= const Loaded._();
    return _instance;
  }

  static Loaded _instance;
}

@immutable
class Error extends HomeState {
  const Error._() : super(_HomeState.Error);

  factory Error() {
    _instance ??= const Error._();
    return _instance;
  }

  static Error _instance;
}
