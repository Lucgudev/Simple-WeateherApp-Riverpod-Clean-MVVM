import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/provider/time_provider.dart';
import 'package:weatherapp/core/router/routes.dart';
import 'package:weatherapp/core/router/weather_app_navigator_impl.dart';
import 'package:weatherapp/domain/entities/background_image.dart';
import 'package:weatherapp/domain/entities/home_screen_entity.dart';
import 'package:weatherapp/domain/entities/location_entity.dart';
import 'package:weatherapp/presentation/screens/home/component/current_weather_provider.dart';
import 'package:weatherapp/presentation/screens/home/component/forecast_weather_provider.dart';

part 'home_screen_viewmodel.g.dart';

@riverpod
class HomeScreenViewModel extends _$HomeScreenViewModel {
  @override
  HomeScreenEntity build() {
    final currentTime = ref.read(timeHelperProvider).getCurrentDate();
    final currentHour = currentTime.hour;

    // Day: 06:00 - 18:00
    if (currentHour >= 6 && currentHour < 18) {
      return const HomeScreenEntity(backgroundImage: BackgroundImage.day);
    } else {
      return const HomeScreenEntity(backgroundImage: BackgroundImage.night);
    }
  }

  void navigateToCityScreen() async {
    final result = await ref
        .read(weatherAppNavigatorProvider)
        .pushNamedWithResult(Routes.cityScreen);
    if (result is LocationEntity) {
      ref
          .read(currentWeatherProvider.notifier)
          .getCurrentWeatherWithSpecificLocation(result);
      ref
          .read(forecastWeatherProvider.notifier)
          .getForecastWeatherWithSpecificLocation(result);
    }
  }
}
