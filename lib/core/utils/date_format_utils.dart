import 'package:intl/intl.dart';

class DateFormatUtils {
  static String convertToHourFormat(int timestamp) {
    try {
      // Parse the timestamp string into a DateTime object
      // Convert the timestamp to DateTime (multiply by 1000 to convert from seconds to milliseconds)
      DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

      // Format the DateTime to 'hh:mm' (24-hour format)
      String formattedTime = DateFormat('HH:mm').format(dateTime);
      return formattedTime;
    } catch (_) {
      return '';
    }
  }
}
