import 'package:flutter/material.dart' hide Router;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherapp/core/provider/global_providers.dart';
import 'package:weatherapp/core/router/routes.dart';
import 'package:weatherapp/core/router/router.dart';
import 'package:weatherapp/core/theme/app_theme.dart';

class WeatherApp extends ConsumerStatefulWidget {
  const WeatherApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeatherAppState();
}

class _WeatherAppState extends ConsumerState<WeatherApp>
    with WidgetsBindingObserver {
  GlobalKey<NavigatorState>? _navigatorKey;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _navigatorKey = ref.read(navigatorKeyProvider);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: appTheme,
      themeMode: ThemeMode.light,
      navigatorKey: _navigatorKey,
      routes: Router.generateRoute(),
      initialRoute: Routes.homeScreen,
    );
  }
}
