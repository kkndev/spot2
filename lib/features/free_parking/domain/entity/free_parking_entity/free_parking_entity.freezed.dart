// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'free_parking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FreeParkingEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get parkingId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreeParkingEntityCopyWith<FreeParkingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeParkingEntityCopyWith<$Res> {
  factory $FreeParkingEntityCopyWith(
          FreeParkingEntity value, $Res Function(FreeParkingEntity) then) =
      _$FreeParkingEntityCopyWithImpl<$Res, FreeParkingEntity>;
  @useResult
  $Res call({int id, int userId, int parkingId});
}

/// @nodoc
class _$FreeParkingEntityCopyWithImpl<$Res, $Val extends FreeParkingEntity>
    implements $FreeParkingEntityCopyWith<$Res> {
  _$FreeParkingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? parkingId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FreeParkingEntityCopyWith<$Res>
    implements $FreeParkingEntityCopyWith<$Res> {
  factory _$$_FreeParkingEntityCopyWith(_$_FreeParkingEntity value,
          $Res Function(_$_FreeParkingEntity) then) =
      __$$_FreeParkingEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, int parkingId});
}

/// @nodoc
class __$$_FreeParkingEntityCopyWithImpl<$Res>
    extends _$FreeParkingEntityCopyWithImpl<$Res, _$_FreeParkingEntity>
    implements _$$_FreeParkingEntityCopyWith<$Res> {
  __$$_FreeParkingEntityCopyWithImpl(
      _$_FreeParkingEntity _value, $Res Function(_$_FreeParkingEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? parkingId = null,
  }) {
    return _then(_$_FreeParkingEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FreeParkingEntity implements _FreeParkingEntity {
  const _$_FreeParkingEntity(
      {required this.id, required this.userId, required this.parkingId});

  @override
  final int id;
  @override
  final int userId;
  @override
  final int parkingId;

  @override
  String toString() {
    return 'FreeParkingEntity(id: $id, userId: $userId, parkingId: $parkingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreeParkingEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.parkingId, parkingId) ||
                other.parkingId == parkingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, parkingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreeParkingEntityCopyWith<_$_FreeParkingEntity> get copyWith =>
      __$$_FreeParkingEntityCopyWithImpl<_$_FreeParkingEntity>(
          this, _$identity);
}

abstract class _FreeParkingEntity implements FreeParkingEntity {
  const factory _FreeParkingEntity(
      {required final int id,
      required final int userId,
      required final int parkingId}) = _$_FreeParkingEntity;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get parkingId;
  @override
  @JsonKey(ignore: true)
  _$$_FreeParkingEntityCopyWith<_$_FreeParkingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
