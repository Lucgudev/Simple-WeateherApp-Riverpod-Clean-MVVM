// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastWeatherEntity _$ForecastWeatherEntityFromJson(
    Map<String, dynamic> json) {
  return _ForecastWeatherEntity.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherEntity {
  List<CurrentWeatherEntity> get list => throw _privateConstructorUsedError;

  /// Serializes this ForecastWeatherEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastWeatherEntityCopyWith<ForecastWeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherEntityCopyWith<$Res> {
  factory $ForecastWeatherEntityCopyWith(ForecastWeatherEntity value,
          $Res Function(ForecastWeatherEntity) then) =
      _$ForecastWeatherEntityCopyWithImpl<$Res, ForecastWeatherEntity>;
  @useResult
  $Res call({List<CurrentWeatherEntity> list});
}

/// @nodoc
class _$ForecastWeatherEntityCopyWithImpl<$Res,
        $Val extends ForecastWeatherEntity>
    implements $ForecastWeatherEntityCopyWith<$Res> {
  _$ForecastWeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CurrentWeatherEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastWeatherEntityImplCopyWith<$Res>
    implements $ForecastWeatherEntityCopyWith<$Res> {
  factory _$$ForecastWeatherEntityImplCopyWith(
          _$ForecastWeatherEntityImpl value,
          $Res Function(_$ForecastWeatherEntityImpl) then) =
      __$$ForecastWeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CurrentWeatherEntity> list});
}

/// @nodoc
class __$$ForecastWeatherEntityImplCopyWithImpl<$Res>
    extends _$ForecastWeatherEntityCopyWithImpl<$Res,
        _$ForecastWeatherEntityImpl>
    implements _$$ForecastWeatherEntityImplCopyWith<$Res> {
  __$$ForecastWeatherEntityImplCopyWithImpl(_$ForecastWeatherEntityImpl _value,
      $Res Function(_$ForecastWeatherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ForecastWeatherEntityImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CurrentWeatherEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ForecastWeatherEntityImpl implements _ForecastWeatherEntity {
  const _$ForecastWeatherEntityImpl(
      {required final List<CurrentWeatherEntity> list})
      : _list = list;

  factory _$ForecastWeatherEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherEntityImplFromJson(json);

  final List<CurrentWeatherEntity> _list;
  @override
  List<CurrentWeatherEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ForecastWeatherEntity(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherEntityImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of ForecastWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherEntityImplCopyWith<_$ForecastWeatherEntityImpl>
      get copyWith => __$$ForecastWeatherEntityImplCopyWithImpl<
          _$ForecastWeatherEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherEntityImplToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherEntity implements ForecastWeatherEntity {
  const factory _ForecastWeatherEntity(
          {required final List<CurrentWeatherEntity> list}) =
      _$ForecastWeatherEntityImpl;

  factory _ForecastWeatherEntity.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherEntityImpl.fromJson;

  @override
  List<CurrentWeatherEntity> get list;

  /// Create a copy of ForecastWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastWeatherEntityImplCopyWith<_$ForecastWeatherEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
