// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_camera_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingCameraEntity {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingCameraEntityCopyWith<ParkingCameraEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingCameraEntityCopyWith<$Res> {
  factory $ParkingCameraEntityCopyWith(
          ParkingCameraEntity value, $Res Function(ParkingCameraEntity) then) =
      _$ParkingCameraEntityCopyWithImpl<$Res, ParkingCameraEntity>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ParkingCameraEntityCopyWithImpl<$Res, $Val extends ParkingCameraEntity>
    implements $ParkingCameraEntityCopyWith<$Res> {
  _$ParkingCameraEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingCameraEntityCopyWith<$Res>
    implements $ParkingCameraEntityCopyWith<$Res> {
  factory _$$_ParkingCameraEntityCopyWith(_$_ParkingCameraEntity value,
          $Res Function(_$_ParkingCameraEntity) then) =
      __$$_ParkingCameraEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_ParkingCameraEntityCopyWithImpl<$Res>
    extends _$ParkingCameraEntityCopyWithImpl<$Res, _$_ParkingCameraEntity>
    implements _$$_ParkingCameraEntityCopyWith<$Res> {
  __$$_ParkingCameraEntityCopyWithImpl(_$_ParkingCameraEntity _value,
      $Res Function(_$_ParkingCameraEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ParkingCameraEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ParkingCameraEntity implements _ParkingCameraEntity {
  const _$_ParkingCameraEntity({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ParkingCameraEntity(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingCameraEntity &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingCameraEntityCopyWith<_$_ParkingCameraEntity> get copyWith =>
      __$$_ParkingCameraEntityCopyWithImpl<_$_ParkingCameraEntity>(
          this, _$identity);
}

abstract class _ParkingCameraEntity implements ParkingCameraEntity {
  const factory _ParkingCameraEntity({required final int id}) =
      _$_ParkingCameraEntity;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingCameraEntityCopyWith<_$_ParkingCameraEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
