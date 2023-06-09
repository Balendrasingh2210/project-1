// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthViewState {
  String get pin => throw _privateConstructorUsedError;
  AuthViewType get activeView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthViewStateCopyWith<AuthViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthViewStateCopyWith<$Res> {
  factory $AuthViewStateCopyWith(
          AuthViewState value, $Res Function(AuthViewState) then) =
      _$AuthViewStateCopyWithImpl<$Res, AuthViewState>;
  @useResult
  $Res call({String pin, AuthViewType activeView});
}

/// @nodoc
class _$AuthViewStateCopyWithImpl<$Res, $Val extends AuthViewState>
    implements $AuthViewStateCopyWith<$Res> {
  _$AuthViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? activeView = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      activeView: null == activeView
          ? _value.activeView
          : activeView // ignore: cast_nullable_to_non_nullable
              as AuthViewType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthViewStateCopyWith<$Res>
    implements $AuthViewStateCopyWith<$Res> {
  factory _$$_AuthViewStateCopyWith(
          _$_AuthViewState value, $Res Function(_$_AuthViewState) then) =
      __$$_AuthViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin, AuthViewType activeView});
}

/// @nodoc
class __$$_AuthViewStateCopyWithImpl<$Res>
    extends _$AuthViewStateCopyWithImpl<$Res, _$_AuthViewState>
    implements _$$_AuthViewStateCopyWith<$Res> {
  __$$_AuthViewStateCopyWithImpl(
      _$_AuthViewState _value, $Res Function(_$_AuthViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? activeView = null,
  }) {
    return _then(_$_AuthViewState(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      activeView: null == activeView
          ? _value.activeView
          : activeView // ignore: cast_nullable_to_non_nullable
              as AuthViewType,
    ));
  }
}

/// @nodoc

class _$_AuthViewState implements _AuthViewState {
  _$_AuthViewState({this.pin = "", this.activeView = AuthViewType.loadingView});

  @override
  @JsonKey()
  final String pin;
  @override
  @JsonKey()
  final AuthViewType activeView;

  @override
  String toString() {
    return 'AuthViewState(pin: $pin, activeView: $activeView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthViewState &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.activeView, activeView) ||
                other.activeView == activeView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, activeView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthViewStateCopyWith<_$_AuthViewState> get copyWith =>
      __$$_AuthViewStateCopyWithImpl<_$_AuthViewState>(this, _$identity);
}

abstract class _AuthViewState implements AuthViewState {
  factory _AuthViewState({final String pin, final AuthViewType activeView}) =
      _$_AuthViewState;

  @override
  String get pin;
  @override
  AuthViewType get activeView;
  @override
  @JsonKey(ignore: true)
  _$$_AuthViewStateCopyWith<_$_AuthViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
