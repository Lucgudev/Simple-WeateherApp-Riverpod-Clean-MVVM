// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Today Weather`
  String get currentWeatherComponentTitle {
    return Intl.message(
      'Today Weather',
      name: 'currentWeatherComponentTitle',
      desc: '',
      args: [],
    );
  }

  /// `Highest Temperature`
  String get currentWeatherComponentHighestTemp {
    return Intl.message(
      'Highest Temperature',
      name: 'currentWeatherComponentHighestTemp',
      desc: '',
      args: [],
    );
  }

  /// `Humidity`
  String get currentWeatherComponentHumidity {
    return Intl.message(
      'Humidity',
      name: 'currentWeatherComponentHumidity',
      desc: '',
      args: [],
    );
  }

  /// `Wind Speed`
  String get currentWeatherComponentWindSpeed {
    return Intl.message(
      'Wind Speed',
      name: 'currentWeatherComponentWindSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Lowest Temperature`
  String get currentWeatherComponentLowestTemp {
    return Intl.message(
      'Lowest Temperature',
      name: 'currentWeatherComponentLowestTemp',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load current weather data`
  String get currentWeatherComponentErrorMessage {
    return Intl.message(
      'Failed to load current weather data',
      name: 'currentWeatherComponentErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Wind`
  String get wind {
    return Intl.message(
      'Wind',
      name: 'wind',
      desc: '',
      args: [],
    );
  }

  /// `Hourly Forecast`
  String get forecastWeatherComponentTitle {
    return Intl.message(
      'Hourly Forecast',
      name: 'forecastWeatherComponentTitle',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load forecast weather data`
  String get forecastWeatherComponentErrorMessage {
    return Intl.message(
      'Failed to load forecast weather data',
      name: 'forecastWeatherComponentErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Unable to detect location`
  String get rationaleTitle {
    return Intl.message(
      'Unable to detect location',
      name: 'rationaleTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please go to Settings › Privacy & Security › Location Services › TipTip, then allow the location access and try again.`
  String get rationaleDesc {
    return Intl.message(
      'Please go to Settings › Privacy & Security › Location Services › TipTip, then allow the location access and try again.',
      name: 'rationaleDesc',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
