import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_weather_entity.freezed.dart';
part 'detail_weather_entity.g.dart';

@freezed
class DetailWeatherEntity with _$DetailWeatherEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DetailWeatherEntity({
    required double temp,
    required double tempMin,
    required double tempMax,
    required double humidity,
  }) = _DetailWeatherEntity;

  factory DetailWeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$DetailWeatherEntityFromJson(json);
}
