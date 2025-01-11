import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'time_provider.g.dart';

@riverpod
TimeHelper timeHelper(Ref ref) {
  return TimeHelperImpl();
}

abstract class TimeHelper {
  DateTime getCurrentDate();
  DateTime getTimeFromTimestamp(int timestamp);
}

class TimeHelperImpl implements TimeHelper {
  @override
  DateTime getCurrentDate() {
    return DateTime.now();
  }

  @override
  DateTime getTimeFromTimestamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }
}
