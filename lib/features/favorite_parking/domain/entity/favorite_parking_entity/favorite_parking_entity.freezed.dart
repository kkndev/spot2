// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_parking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteParkingEntity {
  int get id => throw _privateConstructorUsedError;
  String get userUid => throw _privateConstructorUsedError;
  int get parkingId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isFree => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteParkingEntityCopyWith<FavoriteParkingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteParkingEntityCopyWith<$Res> {
  factory $FavoriteParkingEntityCopyWith(FavoriteParkingEntity value,
          $Res Function(FavoriteParkingEntity) then) =
      _$FavoriteParkingEntityCopyWithImpl<$Res, FavoriteParkingEntity>;
  @useResult
  $Res call({int id, String userUid, int parkingId, String name, bool isFree});
}

/// @nodoc
class _$FavoriteParkingEntityCopyWithImpl<$Res,
        $Val extends FavoriteParkingEntity>
    implements $FavoriteParkingEntityCopyWith<$Res> {
  _$FavoriteParkingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userUid = null,
    Object? parkingId = null,
    Object? name = null,
    Object? isFree = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteParkingEntityCopyWith<$Res>
    implements $FavoriteParkingEntityCopyWith<$Res> {
  factory _$$_FavoriteParkingEntityCopyWith(_$_FavoriteParkingEntity value,
          $Res Function(_$_FavoriteParkingEntity) then) =
      __$$_FavoriteParkingEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String userUid, int parkingId, String name, bool isFree});
}

/// @nodoc
class __$$_FavoriteParkingEntityCopyWithImpl<$Res>
    extends _$FavoriteParkingEntityCopyWithImpl<$Res, _$_FavoriteParkingEntity>
    implements _$$_FavoriteParkingEntityCopyWith<$Res> {
  __$$_FavoriteParkingEntityCopyWithImpl(_$_FavoriteParkingEntity _value,
      $Res Function(_$_FavoriteParkingEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userUid = null,
    Object? parkingId = null,
    Object? name = null,
    Object? isFree = null,
  }) {
    return _then(_$_FavoriteParkingEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      parkingId: null == parkingId
          ? _value.parkingId
          : parkingId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FavoriteParkingEntity implements _FavoriteParkingEntity {
  const _$_FavoriteParkingEntity(
      {required this.id,
      required this.userUid,
      required this.parkingId,
      this.name = 'favorite_parking_name',
      required this.isFree});

  @override
  final int id;
  @override
  final String userUid;
  @override
  final int parkingId;
  @override
  @JsonKey()
  final String name;
  @override
  final bool isFree;

  @override
  String toString() {
    return 'FavoriteParkingEntity(id: $id, userUid: $userUid, parkingId: $parkingId, name: $name, isFree: $isFree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteParkingEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.parkingId, parkingId) ||
                other.parkingId == parkingId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isFree, isFree) || other.isFree == isFree));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userUid, parkingId, name, isFree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteParkingEntityCopyWith<_$_FavoriteParkingEntity> get copyWith =>
      __$$_FavoriteParkingEntityCopyWithImpl<_$_FavoriteParkingEntity>(
          this, _$identity);
}

abstract class _FavoriteParkingEntity implements FavoriteParkingEntity {
  const factory _FavoriteParkingEntity(
      {required final int id,
      required final String userUid,
      required final int parkingId,
      final String name,
      required final bool isFree}) = _$_FavoriteParkingEntity;

  @override
  int get id;
  @override
  String get userUid;
  @override
  int get parkingId;
  @override
  String get name;
  @override
  bool get isFree;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteParkingEntityCopyWith<_$_FavoriteParkingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
