// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeViewState {
  MetaInfoModel? get meta => throw _privateConstructorUsedError;
  HomeViewStatus get status => throw _privateConstructorUsedError;
  List<DataModel> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
  @useResult
  $Res call({MetaInfoModel? meta, HomeViewStatus status, List<DataModel> data});
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaInfoModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeViewStatus,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeViewStateCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$_HomeViewStateCopyWith(
          _$_HomeViewState value, $Res Function(_$_HomeViewState) then) =
      __$$_HomeViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaInfoModel? meta, HomeViewStatus status, List<DataModel> data});
}

/// @nodoc
class __$$_HomeViewStateCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$_HomeViewState>
    implements _$$_HomeViewStateCopyWith<$Res> {
  __$$_HomeViewStateCopyWithImpl(
      _$_HomeViewState _value, $Res Function(_$_HomeViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$_HomeViewState(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaInfoModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeViewStatus,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel>,
    ));
  }
}

/// @nodoc

class _$_HomeViewState implements _HomeViewState {
  _$_HomeViewState(
      {this.meta,
      this.status = HomeViewStatus.loading,
      final List<DataModel> data = const []})
      : _data = data;

  @override
  final MetaInfoModel? meta;
  @override
  @JsonKey()
  final HomeViewStatus status;
  final List<DataModel> _data;
  @override
  @JsonKey()
  List<DataModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeViewState(meta: $meta, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeViewState &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, meta, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeViewStateCopyWith<_$_HomeViewState> get copyWith =>
      __$$_HomeViewStateCopyWithImpl<_$_HomeViewState>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  factory _HomeViewState(
      {final MetaInfoModel? meta,
      final HomeViewStatus status,
      final List<DataModel> data}) = _$_HomeViewState;

  @override
  MetaInfoModel? get meta;
  @override
  HomeViewStatus get status;
  @override
  List<DataModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_HomeViewStateCopyWith<_$_HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
