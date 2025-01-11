import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/provider/global_providers.dart';
import 'package:weatherapp/domain/entities/current_weather_entity.dart';

part 'current_weather_endpoint.g.dart';

@riverpod
CurrentWeatherEndpoint currentWeatherEndpoint(Ref ref) {
  final dio = ref.read(dioProvider);
  return CurrentWeatherEndpoint(dio);
}

class CurrentWeatherEndpoint {
  final Dio _dio;

  CurrentWeatherEndpoint(this._dio);

  Future<CurrentWeatherEntity> getCurrentWeather(double lat, double lon) async {
    try {
      final response = await _dio.get(
        '/data/2.5/weather',
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'units': 'metric',
          'appid': dotenv.env['OPEN_WEATHER_API_KEY'],
        },
      );
      return CurrentWeatherEntity.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception();
    }
  }
}
