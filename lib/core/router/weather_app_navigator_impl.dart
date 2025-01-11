import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/core/provider/global_providers.dart';
import 'package:weatherapp/core/router/weather_app_navigator.dart';

part 'weather_app_navigator_impl.g.dart';

@Riverpod(keepAlive: true)
WeatherAppNavigator weatherAppNavigator(Ref ref) {
  final navigatorKey = ref.read(navigatorKeyProvider);
  return WeatherAppNavigatorImpl(navigatorKey);
}

class WeatherAppNavigatorImpl extends WeatherAppNavigator {
  final GlobalKey<NavigatorState> navigatorKey;

  WeatherAppNavigatorImpl(this.navigatorKey);

  @override
  void popUntil(String route) {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.popUntil(ModalRoute.withName(route));
    }
  }

  @override
  void popWithResult({Object? result}) {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.pop(result);
    }
  }

  @override
  Future<Object?> pushNamedWithResult(String route, {Object? arguments}) async {
    final result =
        await navigatorKey.currentState?.pushNamed(route, arguments: arguments);
    return result;
  }

  @override
  Future<Object?> pushReplacementNamedWithResult(String route,
      {Object? arguments}) async {
    final result = await navigatorKey.currentState
        ?.pushReplacementNamed(route, arguments: arguments);
    return result;
  }

  @override
  Future<Object?> pushNamedAndRemoveUntilWithResult(
      String newRouteName, bool Function(Route p1) predicate,
      {Object? arguments}) async {
    final result = await navigatorKey.currentState?.pushNamedAndRemoveUntil(
        newRouteName, predicate,
        arguments: arguments);
    return result;
  }

  @override
  String currentRoute() {
    String? currentPath;
    navigatorKey.currentState?.popUntil((route) {
      currentPath = route.settings.name;
      return true;
    });
    return currentPath ?? '';
  }

  @override
  Object? currentArguments() {
    Object? currentArguments;
    navigatorKey.currentState?.popUntil((route) {
      currentArguments = route.settings.arguments;
      return true;
    });
    return currentArguments;
  }

  @override
  BuildContext? getContext() {
    return navigatorKey.currentContext;
  }
}
