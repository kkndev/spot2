// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestStatus<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInit<T> value) init,
    required TResult Function(_LoadInProgress<T> value) loading,
    required TResult Function(_LoadSuccess<T> value) success,
    required TResult Function(_LoadFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInit<T> value)? init,
    TResult? Function(_LoadInProgress<T> value)? loading,
    TResult? Function(_LoadSuccess<T> value)? success,
    TResult? Function(_LoadFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInit<T> value)? init,
    TResult Function(_LoadInProgress<T> value)? loading,
    TResult Function(_LoadSuccess<T> value)? success,
    TResult Function(_LoadFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStatusCopyWith<T, $Res> {
  factory $RequestStatusCopyWith(
          RequestStatus<T> value, $Res Function(RequestStatus<T>) then) =
      _$RequestStatusCopyWithImpl<T, $Res, RequestStatus<T>>;
}

/// @nodoc
class _$RequestStatusCopyWithImpl<T, $Res, $Val extends RequestStatus<T>>
    implements $RequestStatusCopyWith<T, $Res> {
  _$RequestStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadInitCopyWith<T, $Res> {
  factory _$$_LoadInitCopyWith(
          _$_LoadInit<T> value, $Res Function(_$_LoadInit<T>) then) =
      __$$_LoadInitCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadInitCopyWithImpl<T, $Res>
    extends _$RequestStatusCopyWithImpl<T, $Res, _$_LoadInit<T>>
    implements _$$_LoadInitCopyWith<T, $Res> {
  __$$_LoadInitCopyWithImpl(
      _$_LoadInit<T> _value, $Res Function(_$_LoadInit<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInit<T> implements _LoadInit<T> {
  const _$_LoadInit();

  @override
  String toString() {
    return 'RequestStatus<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInit<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInit<T> value) init,
    required TResult Function(_LoadInProgress<T> value) loading,
    required TResult Function(_LoadSuccess<T> value) success,
    required TResult Function(_LoadFailure<T> value) failure,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInit<T> value)? init,
    TResult? Function(_LoadInProgress<T> value)? loading,
    TResult? Function(_LoadSuccess<T> value)? success,
    TResult? Function(_LoadFailure<T> value)? failure,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInit<T> value)? init,
    TResult Function(_LoadInProgress<T> value)? loading,
    TResult Function(_LoadSuccess<T> value)? success,
    TResult Function(_LoadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _LoadInit<T> implements RequestStatus<T> {
  const factory _LoadInit() = _$_LoadInit<T>;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<T, $Res> {
  factory _$$_LoadInProgressCopyWith(_$_LoadInProgress<T> value,
          $Res Function(_$_LoadInProgress<T>) then) =
      __$$_LoadInProgressCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<T, $Res>
    extends _$RequestStatusCopyWithImpl<T, $Res, _$_LoadInProgress<T>>
    implements _$$_LoadInProgressCopyWith<T, $Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress<T> _value, $Res Function(_$_LoadInProgress<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress<T> implements _LoadInProgress<T> {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'RequestStatus<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInit<T> value) init,
    required TResult Function(_LoadInProgress<T> value) loading,
    required TResult Function(_LoadSuccess<T> value) success,
    required TResult Function(_LoadFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInit<T> value)? init,
    TResult? Function(_LoadInProgress<T> value)? loading,
    TResult? Function(_LoadSuccess<T> value)? success,
    TResult? Function(_LoadFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInit<T> value)? init,
    TResult Function(_LoadInProgress<T> value)? loading,
    TResult Function(_LoadSuccess<T> value)? success,
    TResult Function(_LoadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress<T> implements RequestStatus<T> {
  const factory _LoadInProgress() = _$_LoadInProgress<T>;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<T, $Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess<T> value, $Res Function(_$_LoadSuccess<T>) then) =
      __$$_LoadSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<T, $Res>
    extends _$RequestStatusCopyWithImpl<T, $Res, _$_LoadSuccess<T>>
    implements _$$_LoadSuccessCopyWith<T, $Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess<T> _value, $Res Function(_$_LoadSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadSuccess<T>(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess<T> implements _LoadSuccess<T> {
  const _$_LoadSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'RequestStatus<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<T, _$_LoadSuccess<T>> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<T, _$_LoadSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInit<T> value) init,
    required TResult Function(_LoadInProgress<T> value) loading,
    required TResult Function(_LoadSuccess<T> value) success,
    required TResult Function(_LoadFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInit<T> value)? init,
    TResult? Function(_LoadInProgress<T> value)? loading,
    TResult? Function(_LoadSuccess<T> value)? success,
    TResult? Function(_LoadFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInit<T> value)? init,
    TResult Function(_LoadInProgress<T> value)? loading,
    TResult Function(_LoadSuccess<T> value)? success,
    TResult Function(_LoadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess<T> implements RequestStatus<T> {
  const factory _LoadSuccess({required final T data}) = _$_LoadSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<T, _$_LoadSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<T, $Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure<T> value, $Res Function(_$_LoadFailure<T>) then) =
      __$$_LoadFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<T, $Res>
    extends _$RequestStatusCopyWithImpl<T, $Res, _$_LoadFailure<T>>
    implements _$$_LoadFailureCopyWith<T, $Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure<T> _value, $Res Function(_$_LoadFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_LoadFailure<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_LoadFailure<T> implements _LoadFailure<T> {
  const _$_LoadFailure({required this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'RequestStatus<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<T, _$_LoadFailure<T>> get copyWith =>
      __$$_LoadFailureCopyWithImpl<T, _$_LoadFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInit<T> value) init,
    required TResult Function(_LoadInProgress<T> value) loading,
    required TResult Function(_LoadSuccess<T> value) success,
    required TResult Function(_LoadFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInit<T> value)? init,
    TResult? Function(_LoadInProgress<T> value)? loading,
    TResult? Function(_LoadSuccess<T> value)? success,
    TResult? Function(_LoadFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInit<T> value)? init,
    TResult Function(_LoadInProgress<T> value)? loading,
    TResult Function(_LoadSuccess<T> value)? success,
    TResult Function(_LoadFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure<T> implements RequestStatus<T> {
  const factory _LoadFailure({required final Failure error}) =
      _$_LoadFailure<T>;

  Failure get error;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<T, _$_LoadFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
