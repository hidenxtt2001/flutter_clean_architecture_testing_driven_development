// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingProgress loadingProgress() {
    return const _LoadingProgress();
  }

  _FetchWeatherSuccessed fetchWeatherSuccessed(Weather weather) {
    return _FetchWeatherSuccessed(
      weather,
    );
  }

  _FetchWeatherFailed fetchWeatherFailed(String message) {
    return _FetchWeatherFailed(
      message,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(Weather weather) fetchWeatherSuccessed,
    required TResult Function(String message) fetchWeatherFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_FetchWeatherSuccessed value)
        fetchWeatherSuccessed,
    required TResult Function(_FetchWeatherFailed value) fetchWeatherFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(Weather weather) fetchWeatherSuccessed,
    required TResult Function(String message) fetchWeatherFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_FetchWeatherSuccessed value)
        fetchWeatherSuccessed,
    required TResult Function(_FetchWeatherFailed value) fetchWeatherFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingProgressCopyWith<$Res> {
  factory _$LoadingProgressCopyWith(
          _LoadingProgress value, $Res Function(_LoadingProgress) then) =
      __$LoadingProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingProgressCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingProgressCopyWith<$Res> {
  __$LoadingProgressCopyWithImpl(
      _LoadingProgress _value, $Res Function(_LoadingProgress) _then)
      : super(_value, (v) => _then(v as _LoadingProgress));

  @override
  _LoadingProgress get _value => super._value as _LoadingProgress;
}

/// @nodoc

class _$_LoadingProgress implements _LoadingProgress {
  const _$_LoadingProgress();

  @override
  String toString() {
    return 'HomeState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(Weather weather) fetchWeatherSuccessed,
    required TResult Function(String message) fetchWeatherFailed,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_FetchWeatherSuccessed value)
        fetchWeatherSuccessed,
    required TResult Function(_FetchWeatherFailed value) fetchWeatherFailed,
  }) {
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
  }) {
    return loadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgress implements HomeState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$FetchWeatherSuccessedCopyWith<$Res> {
  factory _$FetchWeatherSuccessedCopyWith(_FetchWeatherSuccessed value,
          $Res Function(_FetchWeatherSuccessed) then) =
      __$FetchWeatherSuccessedCopyWithImpl<$Res>;
  $Res call({Weather weather});
}

/// @nodoc
class __$FetchWeatherSuccessedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$FetchWeatherSuccessedCopyWith<$Res> {
  __$FetchWeatherSuccessedCopyWithImpl(_FetchWeatherSuccessed _value,
      $Res Function(_FetchWeatherSuccessed) _then)
      : super(_value, (v) => _then(v as _FetchWeatherSuccessed));

  @override
  _FetchWeatherSuccessed get _value => super._value as _FetchWeatherSuccessed;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_FetchWeatherSuccessed(
      weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_FetchWeatherSuccessed implements _FetchWeatherSuccessed {
  const _$_FetchWeatherSuccessed(this.weather);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'HomeState.fetchWeatherSuccessed(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchWeatherSuccessed &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$FetchWeatherSuccessedCopyWith<_FetchWeatherSuccessed> get copyWith =>
      __$FetchWeatherSuccessedCopyWithImpl<_FetchWeatherSuccessed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(Weather weather) fetchWeatherSuccessed,
    required TResult Function(String message) fetchWeatherFailed,
  }) {
    return fetchWeatherSuccessed(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
  }) {
    return fetchWeatherSuccessed?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (fetchWeatherSuccessed != null) {
      return fetchWeatherSuccessed(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_FetchWeatherSuccessed value)
        fetchWeatherSuccessed,
    required TResult Function(_FetchWeatherFailed value) fetchWeatherFailed,
  }) {
    return fetchWeatherSuccessed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
  }) {
    return fetchWeatherSuccessed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (fetchWeatherSuccessed != null) {
      return fetchWeatherSuccessed(this);
    }
    return orElse();
  }
}

abstract class _FetchWeatherSuccessed implements HomeState {
  const factory _FetchWeatherSuccessed(Weather weather) =
      _$_FetchWeatherSuccessed;

  Weather get weather;
  @JsonKey(ignore: true)
  _$FetchWeatherSuccessedCopyWith<_FetchWeatherSuccessed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchWeatherFailedCopyWith<$Res> {
  factory _$FetchWeatherFailedCopyWith(
          _FetchWeatherFailed value, $Res Function(_FetchWeatherFailed) then) =
      __$FetchWeatherFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FetchWeatherFailedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$FetchWeatherFailedCopyWith<$Res> {
  __$FetchWeatherFailedCopyWithImpl(
      _FetchWeatherFailed _value, $Res Function(_FetchWeatherFailed) _then)
      : super(_value, (v) => _then(v as _FetchWeatherFailed));

  @override
  _FetchWeatherFailed get _value => super._value as _FetchWeatherFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FetchWeatherFailed(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchWeatherFailed implements _FetchWeatherFailed {
  const _$_FetchWeatherFailed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.fetchWeatherFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchWeatherFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$FetchWeatherFailedCopyWith<_FetchWeatherFailed> get copyWith =>
      __$FetchWeatherFailedCopyWithImpl<_FetchWeatherFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(Weather weather) fetchWeatherSuccessed,
    required TResult Function(String message) fetchWeatherFailed,
  }) {
    return fetchWeatherFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
  }) {
    return fetchWeatherFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(Weather weather)? fetchWeatherSuccessed,
    TResult Function(String message)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (fetchWeatherFailed != null) {
      return fetchWeatherFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_FetchWeatherSuccessed value)
        fetchWeatherSuccessed,
    required TResult Function(_FetchWeatherFailed value) fetchWeatherFailed,
  }) {
    return fetchWeatherFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
  }) {
    return fetchWeatherFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_FetchWeatherSuccessed value)? fetchWeatherSuccessed,
    TResult Function(_FetchWeatherFailed value)? fetchWeatherFailed,
    required TResult orElse(),
  }) {
    if (fetchWeatherFailed != null) {
      return fetchWeatherFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchWeatherFailed implements HomeState {
  const factory _FetchWeatherFailed(String message) = _$_FetchWeatherFailed;

  String get message;
  @JsonKey(ignore: true)
  _$FetchWeatherFailedCopyWith<_FetchWeatherFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeEventLoadCurrentWeather loadCurrentWeather(String location) {
    return HomeEventLoadCurrentWeather(
      location,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  String get location => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String location)? loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? loadCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventLoadCurrentWeather value)
        loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventLoadCurrentWeather value)? loadCurrentWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventLoadCurrentWeather value)? loadCurrentWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $HomeEventLoadCurrentWeatherCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEventLoadCurrentWeatherCopyWith(
          HomeEventLoadCurrentWeather value,
          $Res Function(HomeEventLoadCurrentWeather) then) =
      _$HomeEventLoadCurrentWeatherCopyWithImpl<$Res>;
  @override
  $Res call({String location});
}

/// @nodoc
class _$HomeEventLoadCurrentWeatherCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventLoadCurrentWeatherCopyWith<$Res> {
  _$HomeEventLoadCurrentWeatherCopyWithImpl(HomeEventLoadCurrentWeather _value,
      $Res Function(HomeEventLoadCurrentWeather) _then)
      : super(_value, (v) => _then(v as HomeEventLoadCurrentWeather));

  @override
  HomeEventLoadCurrentWeather get _value =>
      super._value as HomeEventLoadCurrentWeather;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(HomeEventLoadCurrentWeather(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeEventLoadCurrentWeather implements HomeEventLoadCurrentWeather {
  const _$HomeEventLoadCurrentWeather(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'HomeEvent.loadCurrentWeather(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEventLoadCurrentWeather &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $HomeEventLoadCurrentWeatherCopyWith<HomeEventLoadCurrentWeather>
      get copyWith => _$HomeEventLoadCurrentWeatherCopyWithImpl<
          HomeEventLoadCurrentWeather>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String location) loadCurrentWeather,
  }) {
    return loadCurrentWeather(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String location)? loadCurrentWeather,
  }) {
    return loadCurrentWeather?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String location)? loadCurrentWeather,
    required TResult orElse(),
  }) {
    if (loadCurrentWeather != null) {
      return loadCurrentWeather(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventLoadCurrentWeather value)
        loadCurrentWeather,
  }) {
    return loadCurrentWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventLoadCurrentWeather value)? loadCurrentWeather,
  }) {
    return loadCurrentWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventLoadCurrentWeather value)? loadCurrentWeather,
    required TResult orElse(),
  }) {
    if (loadCurrentWeather != null) {
      return loadCurrentWeather(this);
    }
    return orElse();
  }
}

abstract class HomeEventLoadCurrentWeather implements HomeEvent {
  const factory HomeEventLoadCurrentWeather(String location) =
      _$HomeEventLoadCurrentWeather;

  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  $HomeEventLoadCurrentWeatherCopyWith<HomeEventLoadCurrentWeather>
      get copyWith => throw _privateConstructorUsedError;
}
