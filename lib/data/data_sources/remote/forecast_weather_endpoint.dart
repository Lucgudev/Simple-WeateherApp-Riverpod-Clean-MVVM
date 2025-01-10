import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/provider/global_providers.dart';
import 'package:weatherapp/domain/entities/forecast_weather_entity.dart';

part 'forecast_weather_endpoint.g.dart';

@riverpod
ForecastWeatherEndpoint forecastWeatherEndpoint(Ref ref) {
  final dio = ref.read(dioProvider);
  return ForecastWeatherEndpoint(dio);
}

class ForecastWeatherEndpoint {
  final Dio _dio;

  ForecastWeatherEndpoint(this._dio);

  Future<ForecastWeatherEntity> getForecastWeather(
      double lat, double lon) async {
    try {
      final response = await _dio.get(
        '/data/2.5/forecast',
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'units': 'metric',
          'appid': '<INSERT_API_KEY_HERE>',
        },
      );
      return ForecastWeatherEntity.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception();
    }
  }
}
