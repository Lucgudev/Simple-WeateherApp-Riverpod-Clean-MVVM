import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/geo_locator/weather_geo_locator_impl.dart';
import 'package:weatherapp/core/provider/time_provider.dart';
import 'package:weatherapp/data/repositories/weather_repository_impl.dart';
import 'package:weatherapp/domain/entities/current_weather_entity.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/domain/entities/location_entity.dart';
import 'package:weatherapp/presentation/screens/home/component/forecast_weather_component.dart';

part 'forecast_weather_provider.g.dart';

@riverpod
class ForecastWeather extends _$ForecastWeather {
  @override
  FutureOr<Map<String, List<CurrentWeatherEntity>>> build() async {
    return await getForecastWeather();
  }

  Future<Map<String, List<CurrentWeatherEntity>>> getForecastWeather() async {
    state = const AsyncLoading();
    final location =
        await ref.read(weatherGeoLocatorProvider).getCurrentLocation();

    final response = await ref
        .read(weatherRepositoryProvider)
        .getForecastWeather(location.latitude, location.longitude);

    Map<String, List<CurrentWeatherEntity>> groupedByDay = {};
    for (var forecast in response.list) {
      String dateKey = ref
          .read(timeHelperProvider)
          .getTimeFromTimestamp(forecast.dt * 1000)
          .toString()
          .split(' ')[0]; // Extract only the date

      // Parse the timestamp string into a DateTime object
      DateTime dateTime = DateTime.parse(dateKey);

      // Format the DateTime object to '13 Apr 2021' format
      String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);
      //only pick 3 day forecast
      if (groupedByDay.length < 3) {
        if (groupedByDay.containsKey(formattedDate)) {
          groupedByDay[formattedDate]!.add(forecast);
        } else {
          groupedByDay[formattedDate] = [forecast];
        }
      } else {
        break;
      }
    }
    return groupedByDay;
  }

  void incrementSelectedDate() {
    final currentState = state.value;
    final currentIndex = ref.read(selectedDateIndexProvider);
    if (currentState != null) {
      if (ref.read(selectedDateIndexProvider) < currentState.keys.length - 1) {
        ref.read(selectedDateIndexProvider.notifier).state = currentIndex + 1;
      }
    }
  }

  void decrementSelectedDate() {
    final currentState = state.value;
    final currentIndex = ref.read(selectedDateIndexProvider);
    if (currentState != null) {
      if (ref.read(selectedDateIndexProvider) > 0) {
        ref.read(selectedDateIndexProvider.notifier).state = currentIndex - 1;
      }
    }
  }

  Future<void> getForecastWeatherWithSpecificLocation(
      LocationEntity locationEntity) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(weatherRepositoryProvider)
          .getForecastWeather(
              locationEntity.latitude, locationEntity.longitude);

      Map<String, List<CurrentWeatherEntity>> groupedByDay = {};
      for (var forecast in response.list) {
        String dateKey = ref
            .read(timeHelperProvider)
            .getTimeFromTimestamp(forecast.dt * 1000)
            .toString()
            .split(' ')[0]; // Extract only the date

        // Parse the timestamp string into a DateTime object
        DateTime dateTime = DateTime.parse(dateKey);

        // Format the DateTime object to '13 Apr 2021' format
        String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);
        //only pick 3 day forecast
        if (groupedByDay.length < 3) {
          if (groupedByDay.containsKey(formattedDate)) {
            groupedByDay[formattedDate]!.add(forecast);
          } else {
            groupedByDay[formattedDate] = [forecast];
          }
        } else {
          break;
        }
      }
      return groupedByDay;
    });
  }
}
