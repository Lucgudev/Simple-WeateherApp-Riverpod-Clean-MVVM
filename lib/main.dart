import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/app.dart';
part 'main_initializer.dart';

void main() async {
  final container = await _mainInitializer();
  runApp(ProviderScope(
    // ignore: deprecated_member_use
    parent: container,
    child: const WeatherApp(),
  ));
}
