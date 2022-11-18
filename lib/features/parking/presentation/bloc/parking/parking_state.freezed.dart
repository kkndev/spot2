// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingState {
  RequestStatus<ParkingEntity> get getParkingRequestStatus =>
      throw _privateConstructorUsedError;
  RequestStatus<List<ParkingEntity>> get getParkingByAddressRequestStatus =>
      throw _privateConstructorUsedError;
  List<ParkingEntity> get searchedParkingList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingStateCopyWith<ParkingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingStateCopyWith<$Res> {
  factory $ParkingStateCopyWith(
          ParkingState value, $Res Function(ParkingState) then) =
      _$ParkingStateCopyWithImpl<$Res, ParkingState>;
  @useResult
  $Res call(
      {RequestStatus<ParkingEntity> getParkingRequestStatus,
      RequestStatus<List<ParkingEntity>> getParkingByAddressRequestStatus,
      List<ParkingEntity> searchedParkingList});

  $RequestStatusCopyWith<ParkingEntity, $Res> get getParkingRequestStatus;
  $RequestStatusCopyWith<List<ParkingEntity>, $Res>
      get getParkingByAddressRequestStatus;
}

/// @nodoc
class _$ParkingStateCopyWithImpl<$Res, $Val extends ParkingState>
    implements $ParkingStateCopyWith<$Res> {
  _$ParkingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getParkingRequestStatus = null,
    Object? getParkingByAddressRequestStatus = null,
    Object? searchedParkingList = null,
  }) {
    return _then(_value.copyWith(
      getParkingRequestStatus: null == getParkingRequestStatus
          ? _value.getParkingRequestStatus
          : getParkingRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<ParkingEntity>,
      getParkingByAddressRequestStatus: null == getParkingByAddressRequestStatus
          ? _value.getParkingByAddressRequestStatus
          : getParkingByAddressRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<ParkingEntity>>,
      searchedParkingList: null == searchedParkingList
          ? _value.searchedParkingList
          : searchedParkingList // ignore: cast_nullable_to_non_nullable
              as List<ParkingEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<ParkingEntity, $Res> get getParkingRequestStatus {
    return $RequestStatusCopyWith<ParkingEntity, $Res>(
        _value.getParkingRequestStatus, (value) {
      return _then(_value.copyWith(getParkingRequestStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<List<ParkingEntity>, $Res>
      get getParkingByAddressRequestStatus {
    return $RequestStatusCopyWith<List<ParkingEntity>, $Res>(
        _value.getParkingByAddressRequestStatus, (value) {
      return _then(
          _value.copyWith(getParkingByAddressRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ParkingStateCopyWith<$Res>
    implements $ParkingStateCopyWith<$Res> {
  factory _$$_ParkingStateCopyWith(
          _$_ParkingState value, $Res Function(_$_ParkingState) then) =
      __$$_ParkingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus<ParkingEntity> getParkingRequestStatus,
      RequestStatus<List<ParkingEntity>> getParkingByAddressRequestStatus,
      List<ParkingEntity> searchedParkingList});

  @override
  $RequestStatusCopyWith<ParkingEntity, $Res> get getParkingRequestStatus;
  @override
  $RequestStatusCopyWith<List<ParkingEntity>, $Res>
      get getParkingByAddressRequestStatus;
}

/// @nodoc
class __$$_ParkingStateCopyWithImpl<$Res>
    extends _$ParkingStateCopyWithImpl<$Res, _$_ParkingState>
    implements _$$_ParkingStateCopyWith<$Res> {
  __$$_ParkingStateCopyWithImpl(
      _$_ParkingState _value, $Res Function(_$_ParkingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getParkingRequestStatus = null,
    Object? getParkingByAddressRequestStatus = null,
    Object? searchedParkingList = null,
  }) {
    return _then(_$_ParkingState(
      null == getParkingRequestStatus
          ? _value.getParkingRequestStatus
          : getParkingRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<ParkingEntity>,
      null == getParkingByAddressRequestStatus
          ? _value.getParkingByAddressRequestStatus
          : getParkingByAddressRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<ParkingEntity>>,
      null == searchedParkingList
          ? _value._searchedParkingList
          : searchedParkingList // ignore: cast_nullable_to_non_nullable
              as List<ParkingEntity>,
    ));
  }
}

/// @nodoc

class _$_ParkingState implements _ParkingState {
  _$_ParkingState(
      [this.getParkingRequestStatus = const RequestStatus.init(),
      this.getParkingByAddressRequestStatus = const RequestStatus.init(),
      final List<ParkingEntity> searchedParkingList = const []])
      : _searchedParkingList = searchedParkingList;

  @override
  @JsonKey()
  final RequestStatus<ParkingEntity> getParkingRequestStatus;
  @override
  @JsonKey()
  final RequestStatus<List<ParkingEntity>> getParkingByAddressRequestStatus;
  final List<ParkingEntity> _searchedParkingList;
  @override
  @JsonKey()
  List<ParkingEntity> get searchedParkingList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedParkingList);
  }

  @override
  String toString() {
    return 'ParkingState(getParkingRequestStatus: $getParkingRequestStatus, getParkingByAddressRequestStatus: $getParkingByAddressRequestStatus, searchedParkingList: $searchedParkingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingState &&
            (identical(
                    other.getParkingRequestStatus, getParkingRequestStatus) ||
                other.getParkingRequestStatus == getParkingRequestStatus) &&
            (identical(other.getParkingByAddressRequestStatus,
                    getParkingByAddressRequestStatus) ||
                other.getParkingByAddressRequestStatus ==
                    getParkingByAddressRequestStatus) &&
            const DeepCollectionEquality()
                .equals(other._searchedParkingList, _searchedParkingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getParkingRequestStatus,
      getParkingByAddressRequestStatus,
      const DeepCollectionEquality().hash(_searchedParkingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingStateCopyWith<_$_ParkingState> get copyWith =>
      __$$_ParkingStateCopyWithImpl<_$_ParkingState>(this, _$identity);
}

abstract class _ParkingState implements ParkingState {
  factory _ParkingState(
      [final RequestStatus<ParkingEntity> getParkingRequestStatus,
      final RequestStatus<List<ParkingEntity>> getParkingByAddressRequestStatus,
      final List<ParkingEntity> searchedParkingList]) = _$_ParkingState;

  @override
  RequestStatus<ParkingEntity> get getParkingRequestStatus;
  @override
  RequestStatus<List<ParkingEntity>> get getParkingByAddressRequestStatus;
  @override
  List<ParkingEntity> get searchedParkingList;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingStateCopyWith<_$_ParkingState> get copyWith =>
      throw _privateConstructorUsedError;
}
