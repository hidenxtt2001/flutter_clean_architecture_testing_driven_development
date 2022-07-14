// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppStateInitial call({Locale locale = const Locale('en')}) {
    return _AppStateInitial(
      locale: locale,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$AppStateInitialCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$AppStateInitialCopyWith(
          _AppStateInitial value, $Res Function(_AppStateInitial) then) =
      __$AppStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class __$AppStateInitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateInitialCopyWith<$Res> {
  __$AppStateInitialCopyWithImpl(
      _AppStateInitial _value, $Res Function(_AppStateInitial) _then)
      : super(_value, (v) => _then(v as _AppStateInitial));

  @override
  _AppStateInitial get _value => super._value as _AppStateInitial;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_AppStateInitial(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_AppStateInitial
    with DiagnosticableTreeMixin
    implements _AppStateInitial {
  const _$_AppStateInitial({this.locale = const Locale('en')});

  @JsonKey()
  @override
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppStateInitial &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$AppStateInitialCopyWith<_AppStateInitial> get copyWith =>
      __$AppStateInitialCopyWithImpl<_AppStateInitial>(this, _$identity);
}

abstract class _AppStateInitial implements AppState {
  const factory _AppStateInitial({Locale locale}) = _$_AppStateInitial;

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$AppStateInitialCopyWith<_AppStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _AppEventLocateChanged locateChanged(Locale locale) {
    return _AppEventLocateChanged(
      locale,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  Locale get locale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) locateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? locateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? locateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventLocateChanged value) locateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppEventLocateChanged value)? locateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventLocateChanged value)? locateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppEventCopyWith<AppEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$AppEventLocateChangedCopyWith<$Res>
    implements $AppEventCopyWith<$Res> {
  factory _$AppEventLocateChangedCopyWith(_AppEventLocateChanged value,
          $Res Function(_AppEventLocateChanged) then) =
      __$AppEventLocateChangedCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class __$AppEventLocateChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$AppEventLocateChangedCopyWith<$Res> {
  __$AppEventLocateChangedCopyWithImpl(_AppEventLocateChanged _value,
      $Res Function(_AppEventLocateChanged) _then)
      : super(_value, (v) => _then(v as _AppEventLocateChanged));

  @override
  _AppEventLocateChanged get _value => super._value as _AppEventLocateChanged;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_AppEventLocateChanged(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_AppEventLocateChanged
    with DiagnosticableTreeMixin
    implements _AppEventLocateChanged {
  const _$_AppEventLocateChanged(this.locale);

  @override
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.locateChanged(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppEvent.locateChanged'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppEventLocateChanged &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$AppEventLocateChangedCopyWith<_AppEventLocateChanged> get copyWith =>
      __$AppEventLocateChangedCopyWithImpl<_AppEventLocateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) locateChanged,
  }) {
    return locateChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? locateChanged,
  }) {
    return locateChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? locateChanged,
    required TResult orElse(),
  }) {
    if (locateChanged != null) {
      return locateChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventLocateChanged value) locateChanged,
  }) {
    return locateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppEventLocateChanged value)? locateChanged,
  }) {
    return locateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventLocateChanged value)? locateChanged,
    required TResult orElse(),
  }) {
    if (locateChanged != null) {
      return locateChanged(this);
    }
    return orElse();
  }
}

abstract class _AppEventLocateChanged implements AppEvent {
  const factory _AppEventLocateChanged(Locale locale) =
      _$_AppEventLocateChanged;

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$AppEventLocateChangedCopyWith<_AppEventLocateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
