import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_weather_entity.freezed.dart';
part 'wind_weather_entity.g.dart';

@freezed
class WindWeatherEntity with _$WindWeatherEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WindWeatherEntity({
    required double speed,
  }) = _WindWeatherEntity;

  factory WindWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$WindWeatherEntityFromJson(json);
}
