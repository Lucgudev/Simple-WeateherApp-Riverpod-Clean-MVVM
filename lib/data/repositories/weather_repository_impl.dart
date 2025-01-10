import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/data/data_sources/remote/current_weather_endpoint.dart';
import 'package:weatherapp/data/data_sources/remote/forecast_weather_endpoint.dart';
import 'package:weatherapp/domain/entities/current_weather_entity.dart';
import 'package:weatherapp/domain/entities/forecast_weather_entity.dart';
import 'package:weatherapp/domain/repositories/weather_repository.dart';

part 'weather_repository_impl.g.dart';

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  final currentWeatherEndpoint = ref.read(currentWeatherEndpointProvider);
  final forecastWeatherEndpoint = ref.read(forecastWeatherEndpointProvider);
  return WeatherRepositoryImpl(currentWeatherEndpoint, forecastWeatherEndpoint);
}

class WeatherRepositoryImpl implements WeatherRepository {
  final CurrentWeatherEndpoint _currentWeatherEndpoint;
  final ForecastWeatherEndpoint _forecastWeatherEndpoint;

  WeatherRepositoryImpl(
      this._currentWeatherEndpoint, this._forecastWeatherEndpoint);

  @override
  Future<CurrentWeatherEntity> getCurrentWeather(double lat, double lon) async {
    return await _currentWeatherEndpoint
        .getCurrentWeather(lat, lon)
        .then((value) => value);
  }

  @override
  Future<ForecastWeatherEntity> getForecastWeather(
      double lat, double lon) async {
    return await _forecastWeatherEndpoint
        .getForecastWeather(lat, lon)
        .then((value) => value);
  }
}
