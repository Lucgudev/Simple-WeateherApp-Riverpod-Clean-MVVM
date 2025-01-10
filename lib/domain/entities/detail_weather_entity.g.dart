// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailWeatherEntityImpl _$$DetailWeatherEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailWeatherEntityImpl(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
    );

Map<String, dynamic> _$$DetailWeatherEntityImplToJson(
        _$DetailWeatherEntityImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'humidity': instance.humidity,
    };
