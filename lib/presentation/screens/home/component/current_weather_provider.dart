import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/geo_locator/weather_geo_locator_impl.dart';
import 'package:weatherapp/data/repositories/weather_repository_impl.dart';
import 'package:weatherapp/domain/entities/current_weather_entity.dart';

part 'current_weather_provider.g.dart';

@riverpod
class CurrentWeather extends _$CurrentWeather {
  @override
  FutureOr<CurrentWeatherEntity> build() async {
    return await getCurrentWeather();
  }

  Future<CurrentWeatherEntity> getCurrentWeather() async {
    final location =
        await ref.read(weatherGeoLocatorImplProvider).getCurrentLocation();

    final response = await ref
        .read(weatherRepositoryProvider)
        .getCurrentWeather(location.latitude, location.longitude);
    return response;
  }
}
