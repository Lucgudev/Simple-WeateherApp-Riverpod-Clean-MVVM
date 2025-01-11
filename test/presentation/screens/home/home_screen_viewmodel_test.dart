import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:weatherapp/core/provider/time_provider.dart';
import 'package:weatherapp/domain/entities/background_image.dart';
import 'package:weatherapp/presentation/screens/home/home_screen_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../weatherapp_mock.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockTimeHelper timeHelper;
  late HomeScreenViewModel sut;

  setUp(() {
    timeHelper = MockTimeHelper();
    container = ProviderContainer(overrides: [
      timeHelperProvider.overrideWith((ref) => timeHelper),
    ]);
  });

  test('Test background image day at morning', () {
    final dateTime = DateTime(2025, 1, 11, 7);
    when(timeHelper.getCurrentDate()).thenReturn(dateTime);
    sut = container.read(homeScreenViewModelProvider.notifier);
    expect(sut.build().backgroundImage, BackgroundImage.day);
  });

  test('Test background image day at night', () {
    final dateTime = DateTime(2025, 1, 11, 19);
    when(timeHelper.getCurrentDate()).thenReturn(dateTime);
    sut = container.read(homeScreenViewModelProvider.notifier);
    expect(sut.build().backgroundImage, BackgroundImage.night);
  });
}
