// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_mode.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeModeState {
  ThemeMode? get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeModeStateCopyWith<ThemeModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModeStateCopyWith<$Res> {
  factory $ThemeModeStateCopyWith(
          ThemeModeState value, $Res Function(ThemeModeState) then) =
      _$ThemeModeStateCopyWithImpl<$Res>;
  $Res call({ThemeMode? themeMode});
}

/// @nodoc
class _$ThemeModeStateCopyWithImpl<$Res>
    implements $ThemeModeStateCopyWith<$Res> {
  _$ThemeModeStateCopyWithImpl(this._value, this._then);

  final ThemeModeState _value;
  // ignore: unused_field
  final $Res Function(ThemeModeState) _then;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc
abstract class _$$_ThemeModeStateCopyWith<$Res>
    implements $ThemeModeStateCopyWith<$Res> {
  factory _$$_ThemeModeStateCopyWith(
          _$_ThemeModeState value, $Res Function(_$_ThemeModeState) then) =
      __$$_ThemeModeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode? themeMode});
}

/// @nodoc
class __$$_ThemeModeStateCopyWithImpl<$Res>
    extends _$ThemeModeStateCopyWithImpl<$Res>
    implements _$$_ThemeModeStateCopyWith<$Res> {
  __$$_ThemeModeStateCopyWithImpl(
      _$_ThemeModeState _value, $Res Function(_$_ThemeModeState) _then)
      : super(_value, (v) => _then(v as _$_ThemeModeState));

  @override
  _$_ThemeModeState get _value => super._value as _$_ThemeModeState;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_$_ThemeModeState(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc

class _$_ThemeModeState implements _ThemeModeState {
  const _$_ThemeModeState({this.themeMode});

  @override
  final ThemeMode? themeMode;

  @override
  String toString() {
    return 'ThemeModeState(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeModeState &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$$_ThemeModeStateCopyWith<_$_ThemeModeState> get copyWith =>
      __$$_ThemeModeStateCopyWithImpl<_$_ThemeModeState>(this, _$identity);
}

abstract class _ThemeModeState implements ThemeModeState {
  const factory _ThemeModeState({final ThemeMode? themeMode}) =
      _$_ThemeModeState;

  @override
  ThemeMode? get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeModeStateCopyWith<_$_ThemeModeState> get copyWith =>
      throw _privateConstructorUsedError;
}