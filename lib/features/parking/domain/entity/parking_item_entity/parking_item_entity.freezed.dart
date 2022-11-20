// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingItemEntity {
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
  List<ParkingPlaceEntity> get parkingPlaces =>
      throw _privateConstructorUsedError;
  List<CameraEntity> get cameras => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingItemEntityCopyWith<ParkingItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingItemEntityCopyWith<$Res> {
  factory $ParkingItemEntityCopyWith(
          ParkingItemEntity value, $Res Function(ParkingItemEntity) then) =
      _$ParkingItemEntityCopyWithImpl<$Res, ParkingItemEntity>;
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
      String name,
      List<ParkingPlaceEntity> parkingPlaces,
      List<CameraEntity> cameras});
}

/// @nodoc
class _$ParkingItemEntityCopyWithImpl<$Res, $Val extends ParkingItemEntity>
    implements $ParkingItemEntityCopyWith<$Res> {
  _$ParkingItemEntityCopyWithImpl(this._value, this._then);

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
    Object? parkingPlaces = null,
    Object? cameras = null,
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
      parkingPlaces: null == parkingPlaces
          ? _value.parkingPlaces
          : parkingPlaces // ignore: cast_nullable_to_non_nullable
              as List<ParkingPlaceEntity>,
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingItemEntityCopyWith<$Res>
    implements $ParkingItemEntityCopyWith<$Res> {
  factory _$$_ParkingItemEntityCopyWith(_$_ParkingItemEntity value,
          $Res Function(_$_ParkingItemEntity) then) =
      __$$_ParkingItemEntityCopyWithImpl<$Res>;
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
      String name,
      List<ParkingPlaceEntity> parkingPlaces,
      List<CameraEntity> cameras});
}

/// @nodoc
class __$$_ParkingItemEntityCopyWithImpl<$Res>
    extends _$ParkingItemEntityCopyWithImpl<$Res, _$_ParkingItemEntity>
    implements _$$_ParkingItemEntityCopyWith<$Res> {
  __$$_ParkingItemEntityCopyWithImpl(
      _$_ParkingItemEntity _value, $Res Function(_$_ParkingItemEntity) _then)
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
    Object? parkingPlaces = null,
    Object? cameras = null,
  }) {
    return _then(_$_ParkingItemEntity(
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
      parkingPlaces: null == parkingPlaces
          ? _value._parkingPlaces
          : parkingPlaces // ignore: cast_nullable_to_non_nullable
              as List<ParkingPlaceEntity>,
      cameras: null == cameras
          ? _value._cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraEntity>,
    ));
  }
}

/// @nodoc

class _$_ParkingItemEntity implements _ParkingItemEntity {
  const _$_ParkingItemEntity(
      {required this.id,
      @JsonKey(name: 'parking_uid') required this.parkingUid,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude,
      @JsonKey(name: 'free_places_count') required this.freePlacesCount,
      @JsonKey(name: 'occupied_places_count') required this.occupiedPlacesCount,
      @JsonKey(name: 'unknown_places_count') required this.unknownPlacesCount,
      @JsonKey(name: 'favorite_name') this.favoriteName = 'favorite_name',
      this.name = 'name',
      final List<ParkingPlaceEntity> parkingPlaces = const [],
      final List<CameraEntity> cameras = const []})
      : _parkingPlaces = parkingPlaces,
        _cameras = cameras;

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
  final List<ParkingPlaceEntity> _parkingPlaces;
  @override
  @JsonKey()
  List<ParkingPlaceEntity> get parkingPlaces {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parkingPlaces);
  }

  final List<CameraEntity> _cameras;
  @override
  @JsonKey()
  List<CameraEntity> get cameras {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  String toString() {
    return 'ParkingItemEntity(id: $id, parkingUid: $parkingUid, address: $address, latitude: $latitude, longitude: $longitude, freePlacesCount: $freePlacesCount, occupiedPlacesCount: $occupiedPlacesCount, unknownPlacesCount: $unknownPlacesCount, favoriteName: $favoriteName, name: $name, parkingPlaces: $parkingPlaces, cameras: $cameras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingItemEntity &&
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
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._parkingPlaces, _parkingPlaces) &&
            const DeepCollectionEquality().equals(other._cameras, _cameras));
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
      name,
      const DeepCollectionEquality().hash(_parkingPlaces),
      const DeepCollectionEquality().hash(_cameras));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingItemEntityCopyWith<_$_ParkingItemEntity> get copyWith =>
      __$$_ParkingItemEntityCopyWithImpl<_$_ParkingItemEntity>(
          this, _$identity);
}

abstract class _ParkingItemEntity implements ParkingItemEntity {
  const factory _ParkingItemEntity(
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
      final String name,
      final List<ParkingPlaceEntity> parkingPlaces,
      final List<CameraEntity> cameras}) = _$_ParkingItemEntity;

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
  List<ParkingPlaceEntity> get parkingPlaces;
  @override
  List<CameraEntity> get cameras;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingItemEntityCopyWith<_$_ParkingItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
