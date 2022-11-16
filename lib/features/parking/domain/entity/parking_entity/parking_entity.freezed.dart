// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_uid')
  String get parkingUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'free_places_count')
  int get freePlacesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'occupied_places_count')
  int get occupiedPlacesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unknown_places_count')
  int get unknownPlacesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorite_name')
  String get favoriteName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingEntityCopyWith<ParkingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingEntityCopyWith<$Res> {
  factory $ParkingEntityCopyWith(
          ParkingEntity value, $Res Function(ParkingEntity) then) =
      _$ParkingEntityCopyWithImpl<$Res, ParkingEntity>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parking_uid') String parkingUid,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'free_places_count') int freePlacesCount,
      @JsonKey(name: 'occupied_places_count') int occupiedPlacesCount,
      @JsonKey(name: 'unknown_places_count') int unknownPlacesCount,
      @JsonKey(name: 'favorite_name') String favoriteName,
      String name});
}

/// @nodoc
class _$ParkingEntityCopyWithImpl<$Res, $Val extends ParkingEntity>
    implements $ParkingEntityCopyWith<$Res> {
  _$ParkingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parkingUid = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? freePlacesCount = null,
    Object? occupiedPlacesCount = null,
    Object? unknownPlacesCount = null,
    Object? favoriteName = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parkingUid: null == parkingUid
          ? _value.parkingUid
          : parkingUid // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      freePlacesCount: null == freePlacesCount
          ? _value.freePlacesCount
          : freePlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      occupiedPlacesCount: null == occupiedPlacesCount
          ? _value.occupiedPlacesCount
          : occupiedPlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      unknownPlacesCount: null == unknownPlacesCount
          ? _value.unknownPlacesCount
          : unknownPlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteName: null == favoriteName
          ? _value.favoriteName
          : favoriteName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingEntityCopyWith<$Res>
    implements $ParkingEntityCopyWith<$Res> {
  factory _$$_ParkingEntityCopyWith(
          _$_ParkingEntity value, $Res Function(_$_ParkingEntity) then) =
      __$$_ParkingEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parking_uid') String parkingUid,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'free_places_count') int freePlacesCount,
      @JsonKey(name: 'occupied_places_count') int occupiedPlacesCount,
      @JsonKey(name: 'unknown_places_count') int unknownPlacesCount,
      @JsonKey(name: 'favorite_name') String favoriteName,
      String name});
}

/// @nodoc
class __$$_ParkingEntityCopyWithImpl<$Res>
    extends _$ParkingEntityCopyWithImpl<$Res, _$_ParkingEntity>
    implements _$$_ParkingEntityCopyWith<$Res> {
  __$$_ParkingEntityCopyWithImpl(
      _$_ParkingEntity _value, $Res Function(_$_ParkingEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parkingUid = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? freePlacesCount = null,
    Object? occupiedPlacesCount = null,
    Object? unknownPlacesCount = null,
    Object? favoriteName = null,
    Object? name = null,
  }) {
    return _then(_$_ParkingEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parkingUid: null == parkingUid
          ? _value.parkingUid
          : parkingUid // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      freePlacesCount: null == freePlacesCount
          ? _value.freePlacesCount
          : freePlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      occupiedPlacesCount: null == occupiedPlacesCount
          ? _value.occupiedPlacesCount
          : occupiedPlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      unknownPlacesCount: null == unknownPlacesCount
          ? _value.unknownPlacesCount
          : unknownPlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      favoriteName: null == favoriteName
          ? _value.favoriteName
          : favoriteName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParkingEntity implements _ParkingEntity {
  const _$_ParkingEntity(
      {required this.id,
      @JsonKey(name: 'parking_uid')
          required this.parkingUid,
      @JsonKey(name: 'address')
          required this.address,
      @JsonKey(name: 'latitude')
          required this.latitude,
      @JsonKey(name: 'longitude')
          required this.longitude,
      @JsonKey(name: 'free_places_count')
          required this.freePlacesCount,
      @JsonKey(name: 'occupied_places_count')
          required this.occupiedPlacesCount,
      @JsonKey(name: 'unknown_places_count')
          required this.unknownPlacesCount,
      @JsonKey(name: 'favorite_name')
          this.favoriteName = 'favorite_parking_name',
      this.name = 'name'});

  @override
  final int id;
  @override
  @JsonKey(name: 'parking_uid')
  final String parkingUid;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  @JsonKey(name: 'free_places_count')
  final int freePlacesCount;
  @override
  @JsonKey(name: 'occupied_places_count')
  final int occupiedPlacesCount;
  @override
  @JsonKey(name: 'unknown_places_count')
  final int unknownPlacesCount;
  @override
  @JsonKey(name: 'favorite_name')
  final String favoriteName;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ParkingEntity(id: $id, parkingUid: $parkingUid, address: $address, latitude: $latitude, longitude: $longitude, freePlacesCount: $freePlacesCount, occupiedPlacesCount: $occupiedPlacesCount, unknownPlacesCount: $unknownPlacesCount, favoriteName: $favoriteName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parkingUid, parkingUid) ||
                other.parkingUid == parkingUid) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.freePlacesCount, freePlacesCount) ||
                other.freePlacesCount == freePlacesCount) &&
            (identical(other.occupiedPlacesCount, occupiedPlacesCount) ||
                other.occupiedPlacesCount == occupiedPlacesCount) &&
            (identical(other.unknownPlacesCount, unknownPlacesCount) ||
                other.unknownPlacesCount == unknownPlacesCount) &&
            (identical(other.favoriteName, favoriteName) ||
                other.favoriteName == favoriteName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parkingUid,
      address,
      latitude,
      longitude,
      freePlacesCount,
      occupiedPlacesCount,
      unknownPlacesCount,
      favoriteName,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingEntityCopyWith<_$_ParkingEntity> get copyWith =>
      __$$_ParkingEntityCopyWithImpl<_$_ParkingEntity>(this, _$identity);
}

abstract class _ParkingEntity implements ParkingEntity {
  const factory _ParkingEntity(
      {required final int id,
      @JsonKey(name: 'parking_uid')
          required final String parkingUid,
      @JsonKey(name: 'address')
          required final String address,
      @JsonKey(name: 'latitude')
          required final double latitude,
      @JsonKey(name: 'longitude')
          required final double longitude,
      @JsonKey(name: 'free_places_count')
          required final int freePlacesCount,
      @JsonKey(name: 'occupied_places_count')
          required final int occupiedPlacesCount,
      @JsonKey(name: 'unknown_places_count')
          required final int unknownPlacesCount,
      @JsonKey(name: 'favorite_name')
          final String favoriteName,
      final String name}) = _$_ParkingEntity;

  @override
  int get id;
  @override
  @JsonKey(name: 'parking_uid')
  String get parkingUid;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(name: 'free_places_count')
  int get freePlacesCount;
  @override
  @JsonKey(name: 'occupied_places_count')
  int get occupiedPlacesCount;
  @override
  @JsonKey(name: 'unknown_places_count')
  int get unknownPlacesCount;
  @override
  @JsonKey(name: 'favorite_name')
  String get favoriteName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingEntityCopyWith<_$_ParkingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
