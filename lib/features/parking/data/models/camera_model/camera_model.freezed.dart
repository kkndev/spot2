// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CameraModel _$CameraModelFromJson(Map<String, dynamic> json) {
  return _CameraModel.fromJson(json);
}

/// @nodoc
mixin _$CameraModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'camera_uid')
  String get cameraUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CameraModelCopyWith<CameraModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraModelCopyWith<$Res> {
  factory $CameraModelCopyWith(
          CameraModel value, $Res Function(CameraModel) then) =
      _$CameraModelCopyWithImpl<$Res, CameraModel>;
  @useResult
  $Res call({int id, @JsonKey(name: 'camera_uid') String cameraUid});
}

/// @nodoc
class _$CameraModelCopyWithImpl<$Res, $Val extends CameraModel>
    implements $CameraModelCopyWith<$Res> {
  _$CameraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cameraUid = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cameraUid: null == cameraUid
          ? _value.cameraUid
          : cameraUid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraModelCopyWith<$Res>
    implements $CameraModelCopyWith<$Res> {
  factory _$$_CameraModelCopyWith(
          _$_CameraModel value, $Res Function(_$_CameraModel) then) =
      __$$_CameraModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'camera_uid') String cameraUid});
}

/// @nodoc
class __$$_CameraModelCopyWithImpl<$Res>
    extends _$CameraModelCopyWithImpl<$Res, _$_CameraModel>
    implements _$$_CameraModelCopyWith<$Res> {
  __$$_CameraModelCopyWithImpl(
      _$_CameraModel _value, $Res Function(_$_CameraModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cameraUid = null,
  }) {
    return _then(_$_CameraModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cameraUid: null == cameraUid
          ? _value.cameraUid
          : cameraUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CameraModel implements _CameraModel {
  const _$_CameraModel(
      {required this.id, @JsonKey(name: 'camera_uid') required this.cameraUid});

  factory _$_CameraModel.fromJson(Map<String, dynamic> json) =>
      _$$_CameraModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'camera_uid')
  final String cameraUid;

  @override
  String toString() {
    return 'CameraModel(id: $id, cameraUid: $cameraUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cameraUid, cameraUid) ||
                other.cameraUid == cameraUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cameraUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraModelCopyWith<_$_CameraModel> get copyWith =>
      __$$_CameraModelCopyWithImpl<_$_CameraModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CameraModelToJson(
      this,
    );
  }
}

abstract class _CameraModel implements CameraModel {
  const factory _CameraModel(
          {required final int id,
          @JsonKey(name: 'camera_uid') required final String cameraUid}) =
      _$_CameraModel;

  factory _CameraModel.fromJson(Map<String, dynamic> json) =
      _$_CameraModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'camera_uid')
  String get cameraUid;
  @override
  @JsonKey(ignore: true)
  _$$_CameraModelCopyWith<_$_CameraModel> get copyWith =>
      throw _privateConstructorUsedError;
}
