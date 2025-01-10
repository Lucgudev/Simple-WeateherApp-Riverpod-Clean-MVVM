import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatherapp/domain/entities/background_image.dart';

part 'home_screen_entity.freezed.dart';

@freezed
class HomeScreenEntity with _$HomeScreenEntity {
  const factory HomeScreenEntity({
    required BackgroundImage backgroundImage,
  }) = _HomeScreenEntity;
}
