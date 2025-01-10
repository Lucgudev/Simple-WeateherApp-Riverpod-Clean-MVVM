import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weatherapp/domain/entities/background_image.dart';
import 'package:weatherapp/domain/entities/home_screen_entity.dart';

part 'home_screen_viewmodel.g.dart';

@riverpod
class HomeScreenViewModel extends _$HomeScreenViewModel {
  @override
  HomeScreenEntity build() {
    final currentTime = DateTime.now();
    final currentHour = currentTime.hour;

    // Day: 06:00 - 18:00
    if (currentHour >= 6 && currentHour < 18) {
      return const HomeScreenEntity(backgroundImage: BackgroundImage.day);
    } else {
      return const HomeScreenEntity(backgroundImage: BackgroundImage.night);
    }
  }
}
