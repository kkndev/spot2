// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_parking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteParkingState {
  RequestStatus<List<FavoriteParkingEntity>> get favoriteParkingRequestStatus =>
      throw _privateConstructorUsedError;
  List<FavoriteParkingEntity> get favoriteParkingList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteParkingStateCopyWith<FavoriteParkingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteParkingStateCopyWith<$Res> {
  factory $FavoriteParkingStateCopyWith(FavoriteParkingState value,
          $Res Function(FavoriteParkingState) then) =
      _$FavoriteParkingStateCopyWithImpl<$Res, FavoriteParkingState>;
  @useResult
  $Res call(
      {RequestStatus<List<FavoriteParkingEntity>> favoriteParkingRequestStatus,
      List<FavoriteParkingEntity> favoriteParkingList});

  $RequestStatusCopyWith<List<FavoriteParkingEntity>, $Res>
      get favoriteParkingRequestStatus;
}

/// @nodoc
class _$FavoriteParkingStateCopyWithImpl<$Res,
        $Val extends FavoriteParkingState>
    implements $FavoriteParkingStateCopyWith<$Res> {
  _$FavoriteParkingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteParkingRequestStatus = null,
    Object? favoriteParkingList = null,
  }) {
    return _then(_value.copyWith(
      favoriteParkingRequestStatus: null == favoriteParkingRequestStatus
          ? _value.favoriteParkingRequestStatus
          : favoriteParkingRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<FavoriteParkingEntity>>,
      favoriteParkingList: null == favoriteParkingList
          ? _value.favoriteParkingList
          : favoriteParkingList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteParkingEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<List<FavoriteParkingEntity>, $Res>
      get favoriteParkingRequestStatus {
    return $RequestStatusCopyWith<List<FavoriteParkingEntity>, $Res>(
        _value.favoriteParkingRequestStatus, (value) {
      return _then(
          _value.copyWith(favoriteParkingRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteParkingStateCopyWith<$Res>
    implements $FavoriteParkingStateCopyWith<$Res> {
  factory _$$_FavoriteParkingStateCopyWith(_$_FavoriteParkingState value,
          $Res Function(_$_FavoriteParkingState) then) =
      __$$_FavoriteParkingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus<List<FavoriteParkingEntity>> favoriteParkingRequestStatus,
      List<FavoriteParkingEntity> favoriteParkingList});

  @override
  $RequestStatusCopyWith<List<FavoriteParkingEntity>, $Res>
      get favoriteParkingRequestStatus;
}

/// @nodoc
class __$$_FavoriteParkingStateCopyWithImpl<$Res>
    extends _$FavoriteParkingStateCopyWithImpl<$Res, _$_FavoriteParkingState>
    implements _$$_FavoriteParkingStateCopyWith<$Res> {
  __$$_FavoriteParkingStateCopyWithImpl(_$_FavoriteParkingState _value,
      $Res Function(_$_FavoriteParkingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteParkingRequestStatus = null,
    Object? favoriteParkingList = null,
  }) {
    return _then(_$_FavoriteParkingState(
      null == favoriteParkingRequestStatus
          ? _value.favoriteParkingRequestStatus
          : favoriteParkingRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<FavoriteParkingEntity>>,
      null == favoriteParkingList
          ? _value._favoriteParkingList
          : favoriteParkingList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteParkingEntity>,
    ));
  }
}

/// @nodoc

class _$_FavoriteParkingState implements _FavoriteParkingState {
  _$_FavoriteParkingState(
      [this.favoriteParkingRequestStatus = const RequestStatus.init(),
      final List<FavoriteParkingEntity> favoriteParkingList = const []])
      : _favoriteParkingList = favoriteParkingList;

  @override
  @JsonKey()
  final RequestStatus<List<FavoriteParkingEntity>> favoriteParkingRequestStatus;
  final List<FavoriteParkingEntity> _favoriteParkingList;
  @override
  @JsonKey()
  List<FavoriteParkingEntity> get favoriteParkingList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteParkingList);
  }

  @override
  String toString() {
    return 'FavoriteParkingState(favoriteParkingRequestStatus: $favoriteParkingRequestStatus, favoriteParkingList: $favoriteParkingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteParkingState &&
            (identical(other.favoriteParkingRequestStatus,
                    favoriteParkingRequestStatus) ||
                other.favoriteParkingRequestStatus ==
                    favoriteParkingRequestStatus) &&
            const DeepCollectionEquality()
                .equals(other._favoriteParkingList, _favoriteParkingList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoriteParkingRequestStatus,
      const DeepCollectionEquality().hash(_favoriteParkingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteParkingStateCopyWith<_$_FavoriteParkingState> get copyWith =>
      __$$_FavoriteParkingStateCopyWithImpl<_$_FavoriteParkingState>(
          this, _$identity);
}

abstract class _FavoriteParkingState implements FavoriteParkingState {
  factory _FavoriteParkingState(
          [final RequestStatus<List<FavoriteParkingEntity>>
              favoriteParkingRequestStatus,
          final List<FavoriteParkingEntity> favoriteParkingList]) =
      _$_FavoriteParkingState;

  @override
  RequestStatus<List<FavoriteParkingEntity>> get favoriteParkingRequestStatus;
  @override
  List<FavoriteParkingEntity> get favoriteParkingList;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteParkingStateCopyWith<_$_FavoriteParkingState> get copyWith =>
      throw _privateConstructorUsedError;
}
