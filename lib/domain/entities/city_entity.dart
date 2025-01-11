import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_entity.freezed.dart';
part 'city_entity.g.dart';

@freezed
class CityEntity with _$CityEntity {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CityEntity({
    required String name,
    required double lat,
    required double lon,
    String? country,
    String? state,
  }) = _CityEntity;

  factory CityEntity.fromJson(Map<String, dynamic> json) =>
      _$CityEntityFromJson(json);
}
