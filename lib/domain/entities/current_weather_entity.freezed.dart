// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentWeatherEntity _$CurrentWeatherEntityFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherEntity.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherEntity {
  List<WeatherEntity> get weather => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DetailWeatherEntity get main => throw _privateConstructorUsedError;
  WindWeatherEntity get wind => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;

  /// Serializes this CurrentWeatherEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentWeatherEntityCopyWith<CurrentWeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherEntityCopyWith<$Res> {
  factory $CurrentWeatherEntityCopyWith(CurrentWeatherEntity value,
          $Res Function(CurrentWeatherEntity) then) =
      _$CurrentWeatherEntityCopyWithImpl<$Res, CurrentWeatherEntity>;
  @useResult
  $Res call(
      {List<WeatherEntity> weather,
      String? name,
      DetailWeatherEntity main,
      WindWeatherEntity wind,
      int dt});

  $DetailWeatherEntityCopyWith<$Res> get main;
  $WindWeatherEntityCopyWith<$Res> get wind;
}

/// @nodoc
class _$CurrentWeatherEntityCopyWithImpl<$Res,
        $Val extends CurrentWeatherEntity>
    implements $CurrentWeatherEntityCopyWith<$Res> {
  _$CurrentWeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? name = freezed,
    Object? main = null,
    Object? wind = null,
    Object? dt = null,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherEntity>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as DetailWeatherEntity,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindWeatherEntity,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of CurrentWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailWeatherEntityCopyWith<$Res> get main {
    return $DetailWeatherEntityCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of CurrentWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindWeatherEntityCopyWith<$Res> get wind {
    return $WindWeatherEntityCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherEntityImplCopyWith<$Res>
    implements $CurrentWeatherEntityCopyWith<$Res> {
  factory _$$CurrentWeatherEntityImplCopyWith(_$CurrentWeatherEntityImpl value,
          $Res Function(_$CurrentWeatherEntityImpl) then) =
      __$$CurrentWeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WeatherEntity> weather,
      String? name,
      DetailWeatherEntity main,
      WindWeatherEntity wind,
      int dt});

  @override
  $DetailWeatherEntityCopyWith<$Res> get main;
  @override
  $WindWeatherEntityCopyWith<$Res> get wind;
}

/// @nodoc
class __$$CurrentWeatherEntityImplCopyWithImpl<$Res>
    extends _$CurrentWeatherEntityCopyWithImpl<$Res, _$CurrentWeatherEntityImpl>
    implements _$$CurrentWeatherEntityImplCopyWith<$Res> {
  __$$CurrentWeatherEntityImplCopyWithImpl(_$CurrentWeatherEntityImpl _value,
      $Res Function(_$CurrentWeatherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? name = freezed,
    Object? main = null,
    Object? wind = null,
    Object? dt = null,
  }) {
    return _then(_$CurrentWeatherEntityImpl(
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherEntity>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as DetailWeatherEntity,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindWeatherEntity,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CurrentWeatherEntityImpl implements _CurrentWeatherEntity {
  const _$CurrentWeatherEntityImpl(
      {required final List<WeatherEntity> weather,
      this.name,
      required this.main,
      required this.wind,
      required this.dt})
      : _weather = weather;

  factory _$CurrentWeatherEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherEntityImplFromJson(json);

  final List<WeatherEntity> _weather;
  @override
  List<WeatherEntity> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final String? name;
  @override
  final DetailWeatherEntity main;
  @override
  final WindWeatherEntity wind;
  @override
  final int dt;

  @override
  String toString() {
    return 'CurrentWeatherEntity(weather: $weather, name: $name, main: $main, wind: $wind, dt: $dt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherEntityImpl &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_weather), name, main, wind, dt);

  /// Create a copy of CurrentWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherEntityImplCopyWith<_$CurrentWeatherEntityImpl>
      get copyWith =>
          __$$CurrentWeatherEntityImplCopyWithImpl<_$CurrentWeatherEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherEntityImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherEntity implements CurrentWeatherEntity {
  const factory _CurrentWeatherEntity(
      {required final List<WeatherEntity> weather,
      final String? name,
      required final DetailWeatherEntity main,
      required final WindWeatherEntity wind,
      required final int dt}) = _$CurrentWeatherEntityImpl;

  factory _CurrentWeatherEntity.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherEntityImpl.fromJson;

  @override
  List<WeatherEntity> get weather;
  @override
  String? get name;
  @override
  DetailWeatherEntity get main;
  @override
  WindWeatherEntity get wind;
  @override
  int get dt;

  /// Create a copy of CurrentWeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentWeatherEntityImplCopyWith<_$CurrentWeatherEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
