import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/provider/global_providers.dart';
import 'package:weatherapp/domain/entities/city_entity.dart';

part 'city_endpoint.g.dart';

@riverpod
CityEndpoint cityEndpoint(Ref ref) {
  final dio = ref.read(dioProvider);
  return CityEndpoint(dio);
}

class CityEndpoint {
  final Dio _dio;

  CityEndpoint(this._dio);

  Future<List<CityEntity>> getSearchedCity(String cityName) async {
    try {
      final response = await _dio.get(
        '/geo/1.0/direct',
        queryParameters: {
          'q': cityName,
          'limit': 10,
          'appid': dotenv.env['OPEN_WEATHER_API_KEY'],
        },
      );
      // Parse each item into a CityEntity and create a list
      final List<dynamic> data = response.data;
      final List<CityEntity> cities = data
          .map((jsonItem) =>
              CityEntity.fromJson(jsonItem as Map<String, dynamic>))
          .toList();
      return cities;
    } on Exception catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }
}
