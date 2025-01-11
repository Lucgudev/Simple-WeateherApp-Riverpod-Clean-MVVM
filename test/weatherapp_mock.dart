import 'package:mockito/annotations.dart';
import 'package:weatherapp/core/geo_locator/weather_geo_locator.dart';
import 'package:weatherapp/core/provider/time_provider.dart';
import 'package:weatherapp/domain/repositories/weather_repository.dart';

@GenerateNiceMocks([
  MockSpec<TimeHelper>(),
  MockSpec<WeatherGeoLocator>(),
  MockSpec<WeatherRepository>(),
])
void main() {}
