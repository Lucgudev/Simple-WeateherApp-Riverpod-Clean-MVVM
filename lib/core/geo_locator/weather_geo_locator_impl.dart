import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/geo_locator/weather_geo_locator.dart';
import 'package:weatherapp/domain/entities/location_entity.dart';

part 'weather_geo_locator_impl.g.dart';

@riverpod
WeatherGeoLocator weatherGeoLocator(Ref ref) => WeatherGeoLocatorImpl();

class WeatherGeoLocatorImpl implements WeatherGeoLocator {
  @override
  Future<LocationEntity> getCurrentLocation() async {
    final bool locationServiceEnabled =
        await Geolocator.isLocationServiceEnabled();
    if (!locationServiceEnabled) {
      return const LocationEntity(latitude: -6.1763699, longitude: 106.8204524);
    }

    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return const LocationEntity(latitude: -6.1763699, longitude: 106.8204524);
    }

    // Get the current location
    final position = await Geolocator.getCurrentPosition();
    return LocationEntity(
        latitude: position.latitude, longitude: position.longitude);
  }
}
