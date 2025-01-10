// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailWeatherEntity _$DetailWeatherEntityFromJson(Map<String, dynamic> json) {
  return _DetailWeatherEntity.fromJson(json);
}

/// @nodoc
mixin _$DetailWeatherEntity {
  double get temp => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;

  /// Serializes this DetailWeatherEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailWeatherEntityCopyWith<DetailWeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailWeatherEntityCopyWith<$Res> {
  factory $DetailWeatherEntityCopyWith(
          DetailWeatherEntity value, $Res Function(DetailWeatherEntity) then) =
      _$DetailWeatherEntityCopyWithImpl<$Res, DetailWeatherEntity>;
  @useResult
  $Res call({double temp, double tempMin, double tempMax, double humidity});
}

/// @nodoc
class _$DetailWeatherEntityCopyWithImpl<$Res, $Val extends DetailWeatherEntity>
    implements $DetailWeatherEntityCopyWith<$Res> {
  _$DetailWeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailWeatherEntityImplCopyWith<$Res>
    implements $DetailWeatherEntityCopyWith<$Res> {
  factory _$$DetailWeatherEntityImplCopyWith(_$DetailWeatherEntityImpl value,
          $Res Function(_$DetailWeatherEntityImpl) then) =
      __$$DetailWeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp, double tempMin, double tempMax, double humidity});
}

/// @nodoc
class __$$DetailWeatherEntityImplCopyWithImpl<$Res>
    extends _$DetailWeatherEntityCopyWithImpl<$Res, _$DetailWeatherEntityImpl>
    implements _$$DetailWeatherEntityImplCopyWith<$Res> {
  __$$DetailWeatherEntityImplCopyWithImpl(_$DetailWeatherEntityImpl _value,
      $Res Function(_$DetailWeatherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? humidity = null,
  }) {
    return _then(_$DetailWeatherEntityImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DetailWeatherEntityImpl implements _DetailWeatherEntity {
  const _$DetailWeatherEntityImpl(
      {required this.temp,
      required this.tempMin,
      required this.tempMax,
      required this.humidity});

  factory _$DetailWeatherEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailWeatherEntityImplFromJson(json);

  @override
  final double temp;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final double humidity;

  @override
  String toString() {
    return 'DetailWeatherEntity(temp: $temp, tempMin: $tempMin, tempMax: $tempMax, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailWeatherEntityImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temp, tempMin, tempMax, humidity);

  /// Create a copy of DetailWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailWeatherEntityImplCopyWith<_$DetailWeatherEntityImpl> get copyWith =>
      __$$DetailWeatherEntityImplCopyWithImpl<_$DetailWeatherEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailWeatherEntityImplToJson(
      this,
    );
  }
}

abstract class _DetailWeatherEntity implements DetailWeatherEntity {
  const factory _DetailWeatherEntity(
      {required final double temp,
      required final double tempMin,
      required final double tempMax,
      required final double humidity}) = _$DetailWeatherEntityImpl;

  factory _DetailWeatherEntity.fromJson(Map<String, dynamic> json) =
      _$DetailWeatherEntityImpl.fromJson;

  @override
  double get temp;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  double get humidity;

  /// Create a copy of DetailWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailWeatherEntityImplCopyWith<_$DetailWeatherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
