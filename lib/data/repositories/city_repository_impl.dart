import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/data/data_sources/remote/city_endpoint.dart';
import 'package:weatherapp/domain/entities/city_entity.dart';
import 'package:weatherapp/domain/repositories/city_repository.dart';

part 'city_repository_impl.g.dart';

@riverpod
CityRepository cityRepository(Ref ref) {
  final cityEndpoint = ref.read(cityEndpointProvider);
  return CityRepositoryImpl(cityEndpoint);
}

class CityRepositoryImpl implements CityRepository {
  final CityEndpoint _cityEndpoint;

  CityRepositoryImpl(this._cityEndpoint);

  @override
  Future<List<CityEntity>> getSearchedCity(String cityName) async {
    return await _cityEndpoint.getSearchedCity(cityName);
  }
}
