// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wind_weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WindWeatherEntity _$WindWeatherEntityFromJson(Map<String, dynamic> json) {
  return _WindWeatherEntity.fromJson(json);
}

/// @nodoc
mixin _$WindWeatherEntity {
  double get speed => throw _privateConstructorUsedError;

  /// Serializes this WindWeatherEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WindWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WindWeatherEntityCopyWith<WindWeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindWeatherEntityCopyWith<$Res> {
  factory $WindWeatherEntityCopyWith(
          WindWeatherEntity value, $Res Function(WindWeatherEntity) then) =
      _$WindWeatherEntityCopyWithImpl<$Res, WindWeatherEntity>;
  @useResult
  $Res call({double speed});
}

/// @nodoc
class _$WindWeatherEntityCopyWithImpl<$Res, $Val extends WindWeatherEntity>
    implements $WindWeatherEntityCopyWith<$Res> {
  _$WindWeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WindWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindWeatherEntityImplCopyWith<$Res>
    implements $WindWeatherEntityCopyWith<$Res> {
  factory _$$WindWeatherEntityImplCopyWith(_$WindWeatherEntityImpl value,
          $Res Function(_$WindWeatherEntityImpl) then) =
      __$$WindWeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed});
}

/// @nodoc
class __$$WindWeatherEntityImplCopyWithImpl<$Res>
    extends _$WindWeatherEntityCopyWithImpl<$Res, _$WindWeatherEntityImpl>
    implements _$$WindWeatherEntityImplCopyWith<$Res> {
  __$$WindWeatherEntityImplCopyWithImpl(_$WindWeatherEntityImpl _value,
      $Res Function(_$WindWeatherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WindWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_$WindWeatherEntityImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WindWeatherEntityImpl implements _WindWeatherEntity {
  const _$WindWeatherEntityImpl({required this.speed});

  factory _$WindWeatherEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindWeatherEntityImplFromJson(json);

  @override
  final double speed;

  @override
  String toString() {
    return 'WindWeatherEntity(speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindWeatherEntityImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  /// Create a copy of WindWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindWeatherEntityImplCopyWith<_$WindWeatherEntityImpl> get copyWith =>
      __$$WindWeatherEntityImplCopyWithImpl<_$WindWeatherEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindWeatherEntityImplToJson(
      this,
    );
  }
}

abstract class _WindWeatherEntity implements WindWeatherEntity {
  const factory _WindWeatherEntity({required final double speed}) =
      _$WindWeatherEntityImpl;

  factory _WindWeatherEntity.fromJson(Map<String, dynamic> json) =
      _$WindWeatherEntityImpl.fromJson;

  @override
  double get speed;

  /// Create a copy of WindWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindWeatherEntityImplCopyWith<_$WindWeatherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
