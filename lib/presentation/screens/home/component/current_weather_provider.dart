import 'package:riverpod_annotation/riverpod_annotation.dart';
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
    final response = await ref
        .read(weatherRepositoryProvider)
        .getCurrentWeather(-6.1763699, 106.8204524);
    return response;
  }
}
