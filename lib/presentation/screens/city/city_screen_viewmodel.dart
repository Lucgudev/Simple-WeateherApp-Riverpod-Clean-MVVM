import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/router/weather_app_navigator_impl.dart';
import 'package:weatherapp/data/repositories/city_repository_impl.dart';
import 'package:weatherapp/domain/entities/city_entity.dart';
import 'package:weatherapp/domain/entities/location_entity.dart';

part 'city_screen_viewmodel.g.dart';

@riverpod
class CityScreenViewModel extends _$CityScreenViewModel {
  @override
  FutureOr<List<CityEntity>> build() async {
    return [];
  }

  Future<void> searchCity(String cityName) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response =
          await ref.read(cityRepositoryProvider).getSearchedCity(cityName);
      return response;
    });
  }

  void navigateBackToHomeScreen({required double lat, required double long}) {
    final location = LocationEntity(latitude: lat, longitude: long);
    ref.read(weatherAppNavigatorProvider).popWithResult(result: location);
  }
}
