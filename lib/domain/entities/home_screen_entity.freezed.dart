// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenEntity {
  BackgroundImage get backgroundImage => throw _privateConstructorUsedError;

  /// Create a copy of HomeScreenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeScreenEntityCopyWith<HomeScreenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEntityCopyWith<$Res> {
  factory $HomeScreenEntityCopyWith(
          HomeScreenEntity value, $Res Function(HomeScreenEntity) then) =
      _$HomeScreenEntityCopyWithImpl<$Res, HomeScreenEntity>;
  @useResult
  $Res call({BackgroundImage backgroundImage});
}

/// @nodoc
class _$HomeScreenEntityCopyWithImpl<$Res, $Val extends HomeScreenEntity>
    implements $HomeScreenEntityCopyWith<$Res> {
  _$HomeScreenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeScreenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundImage = null,
  }) {
    return _then(_value.copyWith(
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as BackgroundImage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenEntityImplCopyWith<$Res>
    implements $HomeScreenEntityCopyWith<$Res> {
  factory _$$HomeScreenEntityImplCopyWith(_$HomeScreenEntityImpl value,
          $Res Function(_$HomeScreenEntityImpl) then) =
      __$$HomeScreenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BackgroundImage backgroundImage});
}

/// @nodoc
class __$$HomeScreenEntityImplCopyWithImpl<$Res>
    extends _$HomeScreenEntityCopyWithImpl<$Res, _$HomeScreenEntityImpl>
    implements _$$HomeScreenEntityImplCopyWith<$Res> {
  __$$HomeScreenEntityImplCopyWithImpl(_$HomeScreenEntityImpl _value,
      $Res Function(_$HomeScreenEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeScreenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundImage = null,
  }) {
    return _then(_$HomeScreenEntityImpl(
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as BackgroundImage,
    ));
  }
}

/// @nodoc

class _$HomeScreenEntityImpl implements _HomeScreenEntity {
  const _$HomeScreenEntityImpl({required this.backgroundImage});

  @override
  final BackgroundImage backgroundImage;

  @override
  String toString() {
    return 'HomeScreenEntity(backgroundImage: $backgroundImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenEntityImpl &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backgroundImage);

  /// Create a copy of HomeScreenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenEntityImplCopyWith<_$HomeScreenEntityImpl> get copyWith =>
      __$$HomeScreenEntityImplCopyWithImpl<_$HomeScreenEntityImpl>(
          this, _$identity);
}

abstract class _HomeScreenEntity implements HomeScreenEntity {
  const factory _HomeScreenEntity(
          {required final BackgroundImage backgroundImage}) =
      _$HomeScreenEntityImpl;

  @override
  BackgroundImage get backgroundImage;

  /// Create a copy of HomeScreenEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeScreenEntityImplCopyWith<_$HomeScreenEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
