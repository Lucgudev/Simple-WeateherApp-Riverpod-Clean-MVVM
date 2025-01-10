import 'package:weatherapp/domain/entities/current_weather_entity.dart';
import 'package:weatherapp/domain/entities/forecast_weather_entity.dart';

abstract class WeatherRepository {
  Future<CurrentWeatherEntity> getCurrentWeather(double lat, double lon);
  Future<ForecastWeatherEntity> getForecastWeather(double lat, double lon);
}
