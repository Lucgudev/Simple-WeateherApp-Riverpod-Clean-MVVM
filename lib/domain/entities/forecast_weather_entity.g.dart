// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastWeatherEntityImpl _$$ForecastWeatherEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastWeatherEntityImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => CurrentWeatherEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastWeatherEntityImplToJson(
        _$ForecastWeatherEntityImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
