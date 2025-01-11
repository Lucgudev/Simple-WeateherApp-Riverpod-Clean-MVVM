import 'package:flutter/material.dart';
import 'package:weatherapp/core/router/routes.dart';
import 'package:weatherapp/presentation/screens/city/city_screen.dart';
import 'package:weatherapp/presentation/screens/home/home_screen.dart';

class Router {
  static Map<String, Widget Function(BuildContext context)> generateRoute() {
    return {
      Routes.homeScreen: (context) => const HomeScreen(),
      Routes.cityScreen: (context) => CityScreen(),
    };
  }
}
