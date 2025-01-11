import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weatherapp/core/geo_locator/weather_geo_locator_impl.dart';
import 'package:weatherapp/core/provider/time_provider.dart';
import 'package:weatherapp/data/repositories/weather_repository_impl.dart';
import 'package:weatherapp/domain/entities/current_weather_entity.dart';
import 'package:weatherapp/domain/entities/detail_weather_entity.dart';
import 'package:weatherapp/domain/entities/forecast_weather_entity.dart';
import 'package:weatherapp/domain/entities/location_entity.dart';
import 'package:weatherapp/domain/entities/wind_weather_entity.dart';
import 'package:weatherapp/presentation/screens/home/component/forecast_weather_provider.dart';

import '../../../../weatherapp_mock.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockTimeHelper timeHelper;
  late MockWeatherRepository weatherRepository;
  late MockWeatherGeoLocator geoLocator;
  late ForecastWeather sut;

  const dummyLocation = LocationEntity(latitude: 0.0, longitude: 0.0);

  setUp(() {
    timeHelper = MockTimeHelper();
    weatherRepository = MockWeatherRepository();
    geoLocator = MockWeatherGeoLocator();
    container = ProviderContainer(overrides: [
      timeHelperProvider.overrideWith((ref) => timeHelper),
      weatherRepositoryProvider.overrideWith((ref) => weatherRepository),
      weatherGeoLocatorProvider.overrideWith((ref) => geoLocator),
    ]);
  });

  test(
      'Test get forecast weather success same date will be group as single map',
      () async {
    const dummyWeatherOne = CurrentWeatherEntity(
      weather: [],
      main: DetailWeatherEntity(
        temp: 0.0,
        tempMin: 0.0,
        tempMax: 0.0,
        humidity: 0.0,
      ),
      wind: WindWeatherEntity(speed: 10),
      dt: 1736575200,
    );
    const dummyWeatherTwo = CurrentWeatherEntity(
      weather: [],
      main: DetailWeatherEntity(
        temp: 0.0,
        tempMin: 0.0,
        tempMax: 0.0,
        humidity: 0.0,
      ),
      wind: WindWeatherEntity(speed: 10),
      dt: 1736586000,
    );
    const dummyWeatherThree = CurrentWeatherEntity(
      weather: [],
      main: DetailWeatherEntity(
        temp: 0.0,
        tempMin: 0.0,
        tempMax: 0.0,
        humidity: 0.0,
      ),
      wind: WindWeatherEntity(speed: 10),
      dt: 1736996400,
    );
    final dummyListWeather = List<CurrentWeatherEntity>.of(
        [dummyWeatherOne, dummyWeatherTwo, dummyWeatherThree]);
    final dummyForecastWeatherResponse =
        ForecastWeatherEntity(list: dummyListWeather);

    when(geoLocator.getCurrentLocation())
        .thenAnswer((_) => Future.value(dummyLocation));

    when(weatherRepository.getForecastWeather(
            dummyLocation.latitude, dummyLocation.longitude))
        .thenAnswer((_) => Future.value(dummyForecastWeatherResponse));

    when(timeHelper.getTimeFromTimestamp(1736575200000))
        .thenReturn(DateTime(2025, 1, 11));
    when(timeHelper.getTimeFromTimestamp(1736586000000))
        .thenReturn(DateTime(2025, 1, 11));
    when(timeHelper.getTimeFromTimestamp(1736996400000))
        .thenReturn(DateTime(2025, 1, 13));

    sut = container.read(forecastWeatherProvider.notifier);
    final data = await sut.getForecastWeather();
    expect(data.length, 2);
  });
}
