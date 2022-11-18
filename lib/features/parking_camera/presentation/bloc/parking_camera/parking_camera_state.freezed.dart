// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingCameraState {
  RequestStatus<List<String>> get parkingCameraRequestStatus =>
      throw _privateConstructorUsedError;
  dynamic get imageUrlList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingCameraStateCopyWith<ParkingCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingCameraStateCopyWith<$Res> {
  factory $ParkingCameraStateCopyWith(
          ParkingCameraState value, $Res Function(ParkingCameraState) then) =
      _$ParkingCameraStateCopyWithImpl<$Res, ParkingCameraState>;
  @useResult
  $Res call(
      {RequestStatus<List<String>> parkingCameraRequestStatus,
      dynamic imageUrlList});

  $RequestStatusCopyWith<List<String>, $Res> get parkingCameraRequestStatus;
}

/// @nodoc
class _$ParkingCameraStateCopyWithImpl<$Res, $Val extends ParkingCameraState>
    implements $ParkingCameraStateCopyWith<$Res> {
  _$ParkingCameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingCameraRequestStatus = null,
    Object? imageUrlList = null,
  }) {
    return _then(_value.copyWith(
      parkingCameraRequestStatus: null == parkingCameraRequestStatus
          ? _value.parkingCameraRequestStatus
          : parkingCameraRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<String>>,
      imageUrlList: null == imageUrlList
          ? _value.imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<List<String>, $Res> get parkingCameraRequestStatus {
    return $RequestStatusCopyWith<List<String>, $Res>(
        _value.parkingCameraRequestStatus, (value) {
      return _then(_value.copyWith(parkingCameraRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ParkingCameraStateCopyWith<$Res>
    implements $ParkingCameraStateCopyWith<$Res> {
  factory _$$_ParkingCameraStateCopyWith(_$_ParkingCameraState value,
          $Res Function(_$_ParkingCameraState) then) =
      __$$_ParkingCameraStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus<List<String>> parkingCameraRequestStatus,
      dynamic imageUrlList});

  @override
  $RequestStatusCopyWith<List<String>, $Res> get parkingCameraRequestStatus;
}

/// @nodoc
class __$$_ParkingCameraStateCopyWithImpl<$Res>
    extends _$ParkingCameraStateCopyWithImpl<$Res, _$_ParkingCameraState>
    implements _$$_ParkingCameraStateCopyWith<$Res> {
  __$$_ParkingCameraStateCopyWithImpl(
      _$_ParkingCameraState _value, $Res Function(_$_ParkingCameraState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parkingCameraRequestStatus = null,
    Object? imageUrlList = null,
  }) {
    return _then(_$_ParkingCameraState(
      null == parkingCameraRequestStatus
          ? _value.parkingCameraRequestStatus
          : parkingCameraRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<String>>,
      null == imageUrlList ? _value.imageUrlList : imageUrlList,
    ));
  }
}

/// @nodoc

class _$_ParkingCameraState implements _ParkingCameraState {
  _$_ParkingCameraState(
      [this.parkingCameraRequestStatus = const RequestStatus.init(),
      this.imageUrlList = const []]);

  @override
  @JsonKey()
  final RequestStatus<List<String>> parkingCameraRequestStatus;
  @override
  @JsonKey()
  final dynamic imageUrlList;

  @override
  String toString() {
    return 'ParkingCameraState(parkingCameraRequestStatus: $parkingCameraRequestStatus, imageUrlList: $imageUrlList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingCameraState &&
            (identical(other.parkingCameraRequestStatus,
                    parkingCameraRequestStatus) ||
                other.parkingCameraRequestStatus ==
                    parkingCameraRequestStatus) &&
            const DeepCollectionEquality()
                .equals(other.imageUrlList, imageUrlList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parkingCameraRequestStatus,
      const DeepCollectionEquality().hash(imageUrlList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingCameraStateCopyWith<_$_ParkingCameraState> get copyWith =>
      __$$_ParkingCameraStateCopyWithImpl<_$_ParkingCameraState>(
          this, _$identity);
}

abstract class _ParkingCameraState implements ParkingCameraState {
  factory _ParkingCameraState(
      [final RequestStatus<List<String>> parkingCameraRequestStatus,
      final dynamic imageUrlList]) = _$_ParkingCameraState;

  @override
  RequestStatus<List<String>> get parkingCameraRequestStatus;
  @override
  dynamic get imageUrlList;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingCameraStateCopyWith<_$_ParkingCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
