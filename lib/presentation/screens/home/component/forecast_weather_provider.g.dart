// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$forecastWeatherHash() => r'78fab5a90fc12e905ac45b228af8734ac1a67e4a';

/// See also [ForecastWeather].
@ProviderFor(ForecastWeather)
final forecastWeatherProvider = AutoDisposeAsyncNotifierProvider<
    ForecastWeather, Map<String, List<CurrentWeatherEntity>>>.internal(
  ForecastWeather.new,
  name: r'forecastWeatherProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$forecastWeatherHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ForecastWeather
    = AutoDisposeAsyncNotifier<Map<String, List<CurrentWeatherEntity>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
