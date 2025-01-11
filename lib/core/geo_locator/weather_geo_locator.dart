import 'package:weatherapp/domain/entities/location_entity.dart';

abstract class WeatherGeoLocator {
  Future<LocationEntity> getCurrentLocation();
}
