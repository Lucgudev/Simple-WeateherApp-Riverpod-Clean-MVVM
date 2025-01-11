// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cityScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Search City"),
        "cityScreenEmptyResult":
            MessageLookupByLibrary.simpleMessage("No data"),
        "cityScreenError":
            MessageLookupByLibrary.simpleMessage("Failed to load city"),
        "cityScreenSearchHint":
            MessageLookupByLibrary.simpleMessage("Search city..."),
        "citySecreenSearchBtn": MessageLookupByLibrary.simpleMessage("Search"),
        "currentWeatherComponentErrorMessage":
            MessageLookupByLibrary.simpleMessage(
                "Failed to load current weather data"),
        "currentWeatherComponentHighestTemp":
            MessageLookupByLibrary.simpleMessage("Highest Temperature"),
        "currentWeatherComponentHumidity":
            MessageLookupByLibrary.simpleMessage("Humidity"),
        "currentWeatherComponentLowestTemp":
            MessageLookupByLibrary.simpleMessage("Lowest Temperature"),
        "currentWeatherComponentTitle":
            MessageLookupByLibrary.simpleMessage("Today Weather"),
        "currentWeatherComponentWindSpeed":
            MessageLookupByLibrary.simpleMessage("Wind Speed"),
        "forecastWeatherComponentErrorMessage":
            MessageLookupByLibrary.simpleMessage(
                "Failed to load forecast weather data"),
        "forecastWeatherComponentTitle":
            MessageLookupByLibrary.simpleMessage("Hourly Forecast"),
        "latitude": MessageLookupByLibrary.simpleMessage("Latitude"),
        "longitude": MessageLookupByLibrary.simpleMessage("Longitude"),
        "rationaleDesc": MessageLookupByLibrary.simpleMessage(
            "Please go to Settings › Privacy & Security › Location Services › Weather Viewer, then allow the location access and try again."),
        "rationaleTitle":
            MessageLookupByLibrary.simpleMessage("Unable to detect location"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "setting": MessageLookupByLibrary.simpleMessage("Setting"),
        "wind": MessageLookupByLibrary.simpleMessage("Wind")
      };
}
