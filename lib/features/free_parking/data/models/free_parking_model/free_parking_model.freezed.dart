// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'free_parking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreeParkingModel _$FreeParkingModelFromJson(Map<String, dynamic> json) {
  return _FreeParkingModel.fromJson(json);
}

/// @nodoc
mixin _$FreeParkingModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_id')
  int get parkingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeParkingModelCopyWith<FreeParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeParkingModelCopyWith<$Res> {
  factory $FreeParkingModelCopyWith(
          FreeParkingModel value, $Res Function(FreeParkingModel) then) =
      _$FreeParkingModelCopyWithImpl<$Res, FreeParkingModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'parking_id') int parkingId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$FreeParkingModelCopyWithImpl<$Res, $Val extends FreeParkingModel>
    implements $FreeParkingModelCopyWith<$Res> {
  _$FreeParkingModelCopyWithImpl(this._value, this._then);

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
    Object? createdAt = null,
    Object? updatedAt = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FreeParkingModelCopyWith<$Res>
    implements $FreeParkingModelCopyWith<$Res> {
  factory _$$_FreeParkingModelCopyWith(
          _$_FreeParkingModel value, $Res Function(_$_FreeParkingModel) then) =
      __$$_FreeParkingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'parking_id') int parkingId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$_FreeParkingModelCopyWithImpl<$Res>
    extends _$FreeParkingModelCopyWithImpl<$Res, _$_FreeParkingModel>
    implements _$$_FreeParkingModelCopyWith<$Res> {
  __$$_FreeParkingModelCopyWithImpl(
      _$_FreeParkingModel _value, $Res Function(_$_FreeParkingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? parkingId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_FreeParkingModel(
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreeParkingModel implements _FreeParkingModel {
  const _$_FreeParkingModel(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'parking_id') required this.parkingId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_FreeParkingModel.fromJson(Map<String, dynamic> json) =>
      _$$_FreeParkingModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'parking_id')
  final int parkingId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'FreeParkingModel(id: $id, userId: $userId, parkingId: $parkingId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreeParkingModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.parkingId, parkingId) ||
                other.parkingId == parkingId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, parkingId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreeParkingModelCopyWith<_$_FreeParkingModel> get copyWith =>
      __$$_FreeParkingModelCopyWithImpl<_$_FreeParkingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreeParkingModelToJson(
      this,
    );
  }
}

abstract class _FreeParkingModel implements FreeParkingModel {
  const factory _FreeParkingModel(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'parking_id') required final int parkingId,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$_FreeParkingModel;

  factory _FreeParkingModel.fromJson(Map<String, dynamic> json) =
      _$_FreeParkingModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'parking_id')
  int get parkingId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FreeParkingModelCopyWith<_$_FreeParkingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
