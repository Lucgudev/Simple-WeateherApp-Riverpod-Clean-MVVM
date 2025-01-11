import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weatherapp/core/geo_locator/weather_geo_locator_impl.dart';
import 'package:weatherapp/data/repositories/weather_repository_impl.dart';
import 'package:weatherapp/domain/entities/current_weather_entity.dart';
import 'package:weatherapp/domain/entities/detail_weather_entity.dart';
import 'package:weatherapp/domain/entities/location_entity.dart';
import 'package:weatherapp/domain/entities/wind_weather_entity.dart';
import 'package:weatherapp/presentation/screens/home/component/current_weather_provider.dart';

import '../../../../weatherapp_mock.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockWeatherGeoLocator geoLocator;
  late MockWeatherRepository weatherRepository;
  late CurrentWeather sut;

  const dummyLocation = LocationEntity(latitude: 0.0, longitude: 0.0);
  const dummyResponse = CurrentWeatherEntity(
    weather: [],
    main: DetailWeatherEntity(
      temp: 0.0,
      tempMin: 0.0,
      tempMax: 0.0,
      humidity: 0.0,
    ),
    wind: WindWeatherEntity(
      speed: 10,
    ),
    dt: 1,
  );
  setUp(() {
    geoLocator = MockWeatherGeoLocator();
    weatherRepository = MockWeatherRepository();
    container = ProviderContainer(overrides: [
      weatherGeoLocatorProvider.overrideWith((ref) => geoLocator),
      weatherRepositoryProvider.overrideWith((ref) => weatherRepository),
    ]);
  });

  test('Test success fetch current weather', () async {
    when(geoLocator.getCurrentLocation())
        .thenAnswer((_) => Future.value(dummyLocation));
    when(weatherRepository.getCurrentWeather(
            dummyLocation.latitude, dummyLocation.longitude))
        .thenAnswer((_) => Future.value(dummyResponse));
    sut = container.read(currentWeatherProvider.notifier);
    final response = await sut.getCurrentWeather();
    expect(response.main.temp, dummyResponse.main.temp);
  });
}
