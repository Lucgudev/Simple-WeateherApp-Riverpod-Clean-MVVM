import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weatherapp/core/router/weather_app_navigator_impl.dart';
import 'package:weatherapp/data/repositories/city_repository_impl.dart';
import 'package:weatherapp/domain/entities/city_entity.dart';
import 'package:weatherapp/domain/entities/location_entity.dart';
import 'package:weatherapp/presentation/screens/city/city_screen_viewmodel.dart';

import '../../../weatherapp_mock.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockWeatherAppNavigator navigator;
  late MockCityRepository cityRepository;
  late CityScreenViewModel sut;

  setUp(() {
    navigator = MockWeatherAppNavigator();
    cityRepository = MockCityRepository();
    container = ProviderContainer(overrides: [
      weatherAppNavigatorProvider.overrideWith((ref) => navigator),
      cityRepositoryProvider.overrideWith((ref) => cityRepository),
    ]);
    sut = container.read(cityScreenViewModelProvider.notifier);
  });

  test('Test navigation', () {
    sut.navigateBackToHomeScreen(lat: 0.0, long: 0.0);
    verify(navigator.popWithResult(
            result: const LocationEntity(latitude: 0.0, longitude: 0.0)))
        .called(1);
  });

  test('Test search city success', () async {
    final dummyResponse = List<CityEntity>.empty();
    when(cityRepository.getSearchedCity('Padang'))
        .thenAnswer((_) => Future.value(dummyResponse));
    await sut.searchCity('Padang');
    expect(container.read(cityScreenViewModelProvider).value, dummyResponse);
  });
}
