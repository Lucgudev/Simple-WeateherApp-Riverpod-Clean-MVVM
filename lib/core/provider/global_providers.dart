import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/data/constants/app_constants.dart';

part 'global_providers.g.dart';

@Riverpod(keepAlive: true)
GlobalKey<NavigatorState> navigatorKey(Ref ref) {
  return GlobalKey<NavigatorState>();
}

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  Dio dio = Dio();
  dio.options.baseUrl = AppConstants.baseUrl;
  return dio;
}
