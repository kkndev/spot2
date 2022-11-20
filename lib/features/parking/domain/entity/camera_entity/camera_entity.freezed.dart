// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'camera_uid')
  String get cameraUid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraEntityCopyWith<CameraEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEntityCopyWith<$Res> {
  factory $CameraEntityCopyWith(
          CameraEntity value, $Res Function(CameraEntity) then) =
      _$CameraEntityCopyWithImpl<$Res, CameraEntity>;
  @useResult
  $Res call({int id, @JsonKey(name: 'camera_uid') String cameraUid});
}

/// @nodoc
class _$CameraEntityCopyWithImpl<$Res, $Val extends CameraEntity>
    implements $CameraEntityCopyWith<$Res> {
  _$CameraEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_CameraEntityCopyWith<$Res>
    implements $CameraEntityCopyWith<$Res> {
  factory _$$_CameraEntityCopyWith(
          _$_CameraEntity value, $Res Function(_$_CameraEntity) then) =
      __$$_CameraEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'camera_uid') String cameraUid});
}

/// @nodoc
class __$$_CameraEntityCopyWithImpl<$Res>
    extends _$CameraEntityCopyWithImpl<$Res, _$_CameraEntity>
    implements _$$_CameraEntityCopyWith<$Res> {
  __$$_CameraEntityCopyWithImpl(
      _$_CameraEntity _value, $Res Function(_$_CameraEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cameraUid = null,
  }) {
    return _then(_$_CameraEntity(
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

class _$_CameraEntity implements _CameraEntity {
  const _$_CameraEntity(
      {required this.id, @JsonKey(name: 'camera_uid') required this.cameraUid});

  @override
  final int id;
  @override
  @JsonKey(name: 'camera_uid')
  final String cameraUid;

  @override
  String toString() {
    return 'CameraEntity(id: $id, cameraUid: $cameraUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cameraUid, cameraUid) ||
                other.cameraUid == cameraUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, cameraUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraEntityCopyWith<_$_CameraEntity> get copyWith =>
      __$$_CameraEntityCopyWithImpl<_$_CameraEntity>(this, _$identity);
}

abstract class _CameraEntity implements CameraEntity {
  const factory _CameraEntity(
          {required final int id,
          @JsonKey(name: 'camera_uid') required final String cameraUid}) =
      _$_CameraEntity;

  @override
  int get id;
  @override
  @JsonKey(name: 'camera_uid')
  String get cameraUid;
  @override
  @JsonKey(ignore: true)
  _$$_CameraEntityCopyWith<_$_CameraEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
