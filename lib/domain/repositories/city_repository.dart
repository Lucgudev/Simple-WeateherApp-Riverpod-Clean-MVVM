import 'package:weatherapp/domain/entities/city_entity.dart';

abstract class CityRepository {
  Future<List<CityEntity>> getSearchedCity(String cityName);
}
