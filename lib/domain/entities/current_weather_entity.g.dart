// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherEntityImpl _$$CurrentWeatherEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherEntityImpl(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      main: DetailWeatherEntity.fromJson(json['main'] as Map<String, dynamic>),
      wind: WindWeatherEntity.fromJson(json['wind'] as Map<String, dynamic>),
      dt: (json['dt'] as num).toInt(),
    );

Map<String, dynamic> _$$CurrentWeatherEntityImplToJson(
        _$CurrentWeatherEntityImpl instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'name': instance.name,
      'main': instance.main,
      'wind': instance.wind,
      'dt': instance.dt,
    };
