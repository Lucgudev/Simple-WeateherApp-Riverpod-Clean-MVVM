import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp/domain/entities/detail_weather_entity.dart';
import 'package:weatherapp/domain/entities/weather_entity.dart';

import 'wind_weather_entity.dart';

part 'current_weather_entity.freezed.dart';
part 'current_weather_entity.g.dart';

@freezed
class CurrentWeatherEntity with _$CurrentWeatherEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentWeatherEntity({
    required List<WeatherEntity> weather,
    String? name,
    required DetailWeatherEntity main,
    required WindWeatherEntity wind,
    required int dt,
  }) = _CurrentWeatherEntity;

  factory CurrentWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherEntityFromJson(json);
}
