import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp/domain/entities/current_weather_entity.dart';

part 'forecast_weather_entity.freezed.dart';
part 'forecast_weather_entity.g.dart';

@freezed
class ForecastWeatherEntity with _$ForecastWeatherEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ForecastWeatherEntity({
    required List<CurrentWeatherEntity> list,
  }) = _ForecastWeatherEntity;

  factory ForecastWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherEntityFromJson(json);
}
