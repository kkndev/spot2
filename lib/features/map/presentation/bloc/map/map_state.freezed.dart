// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapState {
  RequestStatus<String> get requestStatus => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  MapboxMapController? get mapController => throw _privateConstructorUsedError;
  Widget? get bottomSheet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call(
      {RequestStatus<String> requestStatus,
      String result,
      MapboxMapController? mapController,
      Widget? bottomSheet});

  $RequestStatusCopyWith<String, $Res> get requestStatus;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
    Object? result = null,
    Object? mapController = freezed,
    Object? bottomSheet = freezed,
  }) {
    return _then(_value.copyWith(
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      mapController: freezed == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as MapboxMapController?,
      bottomSheet: freezed == bottomSheet
          ? _value.bottomSheet
          : bottomSheet // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<String, $Res> get requestStatus {
    return $RequestStatusCopyWith<String, $Res>(_value.requestStatus, (value) {
      return _then(_value.copyWith(requestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$$_MapStateCopyWith(
          _$_MapState value, $Res Function(_$_MapState) then) =
      __$$_MapStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus<String> requestStatus,
      String result,
      MapboxMapController? mapController,
      Widget? bottomSheet});

  @override
  $RequestStatusCopyWith<String, $Res> get requestStatus;
}

/// @nodoc
class __$$_MapStateCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$_MapState>
    implements _$$_MapStateCopyWith<$Res> {
  __$$_MapStateCopyWithImpl(
      _$_MapState _value, $Res Function(_$_MapState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
    Object? result = null,
    Object? mapController = freezed,
    Object? bottomSheet = freezed,
  }) {
    return _then(_$_MapState(
      null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as MapboxMapController?,
      freezed == bottomSheet
          ? _value.bottomSheet
          : bottomSheet // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  _$_MapState(
      [this.requestStatus = const RequestStatus.init(),
      this.result = '',
      this.mapController,
      this.bottomSheet]);

  @override
  @JsonKey()
  final RequestStatus<String> requestStatus;
  @override
  @JsonKey()
  final String result;
  @override
  final MapboxMapController? mapController;
  @override
  final Widget? bottomSheet;

  @override
  String toString() {
    return 'MapState(requestStatus: $requestStatus, result: $result, mapController: $mapController, bottomSheet: $bottomSheet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapState &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.mapController, mapController) ||
                other.mapController == mapController) &&
            (identical(other.bottomSheet, bottomSheet) ||
                other.bottomSheet == bottomSheet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, requestStatus, result, mapController, bottomSheet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapStateCopyWith<_$_MapState> get copyWith =>
      __$$_MapStateCopyWithImpl<_$_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  factory _MapState(
      [final RequestStatus<String> requestStatus,
      final String result,
      final MapboxMapController? mapController,
      final Widget? bottomSheet]) = _$_MapState;

  @override
  RequestStatus<String> get requestStatus;
  @override
  String get result;
  @override
  MapboxMapController? get mapController;
  @override
  Widget? get bottomSheet;
  @override
  @JsonKey(ignore: true)
  _$$_MapStateCopyWith<_$_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}
