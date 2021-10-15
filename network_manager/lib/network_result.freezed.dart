// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkResultTearOff {
  const _$NetworkResultTearOff();

  NetworkResultSuccess<S, F, E> success<S, F, E>(S success) {
    return NetworkResultSuccess<S, F, E>(
      success,
    );
  }

  NetworkResultFailure<S, F, E> failure<S, F, E>(F failure) {
    return NetworkResultFailure<S, F, E>(
      failure,
    );
  }

  NetworkResultException<S, F, E> exception<S, F, E>(String exception) {
    return NetworkResultException<S, F, E>(
      exception,
    );
  }
}

/// @nodoc
const $NetworkResult = _$NetworkResultTearOff();

/// @nodoc
mixin _$NetworkResult<S, F, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
    required TResult Function(String exception) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<S, F, E> value) success,
    required TResult Function(NetworkResultFailure<S, F, E> value) failure,
    required TResult Function(NetworkResultException<S, F, E> value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResultCopyWith<S, F, E, $Res> {
  factory $NetworkResultCopyWith(NetworkResult<S, F, E> value,
          $Res Function(NetworkResult<S, F, E>) then) =
      _$NetworkResultCopyWithImpl<S, F, E, $Res>;
}

/// @nodoc
class _$NetworkResultCopyWithImpl<S, F, E, $Res>
    implements $NetworkResultCopyWith<S, F, E, $Res> {
  _$NetworkResultCopyWithImpl(this._value, this._then);

  final NetworkResult<S, F, E> _value;
  // ignore: unused_field
  final $Res Function(NetworkResult<S, F, E>) _then;
}

/// @nodoc
abstract class $NetworkResultSuccessCopyWith<S, F, E, $Res> {
  factory $NetworkResultSuccessCopyWith(NetworkResultSuccess<S, F, E> value,
          $Res Function(NetworkResultSuccess<S, F, E>) then) =
      _$NetworkResultSuccessCopyWithImpl<S, F, E, $Res>;
  $Res call({S success});
}

/// @nodoc
class _$NetworkResultSuccessCopyWithImpl<S, F, E, $Res>
    extends _$NetworkResultCopyWithImpl<S, F, E, $Res>
    implements $NetworkResultSuccessCopyWith<S, F, E, $Res> {
  _$NetworkResultSuccessCopyWithImpl(NetworkResultSuccess<S, F, E> _value,
      $Res Function(NetworkResultSuccess<S, F, E>) _then)
      : super(_value, (v) => _then(v as NetworkResultSuccess<S, F, E>));

  @override
  NetworkResultSuccess<S, F, E> get _value =>
      super._value as NetworkResultSuccess<S, F, E>;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(NetworkResultSuccess<S, F, E>(
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$NetworkResultSuccess<S, F, E> implements NetworkResultSuccess<S, F, E> {
  const _$NetworkResultSuccess(this.success);

  @override
  final S success;

  @override
  String toString() {
    return 'NetworkResult<$S, $F, $E>.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkResultSuccess<S, F, E> &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  $NetworkResultSuccessCopyWith<S, F, E, NetworkResultSuccess<S, F, E>>
      get copyWith => _$NetworkResultSuccessCopyWithImpl<S, F, E,
          NetworkResultSuccess<S, F, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
    required TResult Function(String exception) exception,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<S, F, E> value) success,
    required TResult Function(NetworkResultFailure<S, F, E> value) failure,
    required TResult Function(NetworkResultException<S, F, E> value) exception,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NetworkResultSuccess<S, F, E> implements NetworkResult<S, F, E> {
  const factory NetworkResultSuccess(S success) =
      _$NetworkResultSuccess<S, F, E>;

  S get success;
  @JsonKey(ignore: true)
  $NetworkResultSuccessCopyWith<S, F, E, NetworkResultSuccess<S, F, E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResultFailureCopyWith<S, F, E, $Res> {
  factory $NetworkResultFailureCopyWith(NetworkResultFailure<S, F, E> value,
          $Res Function(NetworkResultFailure<S, F, E>) then) =
      _$NetworkResultFailureCopyWithImpl<S, F, E, $Res>;
  $Res call({F failure});
}

/// @nodoc
class _$NetworkResultFailureCopyWithImpl<S, F, E, $Res>
    extends _$NetworkResultCopyWithImpl<S, F, E, $Res>
    implements $NetworkResultFailureCopyWith<S, F, E, $Res> {
  _$NetworkResultFailureCopyWithImpl(NetworkResultFailure<S, F, E> _value,
      $Res Function(NetworkResultFailure<S, F, E>) _then)
      : super(_value, (v) => _then(v as NetworkResultFailure<S, F, E>));

  @override
  NetworkResultFailure<S, F, E> get _value =>
      super._value as NetworkResultFailure<S, F, E>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(NetworkResultFailure<S, F, E>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$NetworkResultFailure<S, F, E> implements NetworkResultFailure<S, F, E> {
  const _$NetworkResultFailure(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'NetworkResult<$S, $F, $E>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkResultFailure<S, F, E> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $NetworkResultFailureCopyWith<S, F, E, NetworkResultFailure<S, F, E>>
      get copyWith => _$NetworkResultFailureCopyWithImpl<S, F, E,
          NetworkResultFailure<S, F, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
    required TResult Function(String exception) exception,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<S, F, E> value) success,
    required TResult Function(NetworkResultFailure<S, F, E> value) failure,
    required TResult Function(NetworkResultException<S, F, E> value) exception,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class NetworkResultFailure<S, F, E> implements NetworkResult<S, F, E> {
  const factory NetworkResultFailure(F failure) =
      _$NetworkResultFailure<S, F, E>;

  F get failure;
  @JsonKey(ignore: true)
  $NetworkResultFailureCopyWith<S, F, E, NetworkResultFailure<S, F, E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResultExceptionCopyWith<S, F, E, $Res> {
  factory $NetworkResultExceptionCopyWith(NetworkResultException<S, F, E> value,
          $Res Function(NetworkResultException<S, F, E>) then) =
      _$NetworkResultExceptionCopyWithImpl<S, F, E, $Res>;
  $Res call({String exception});
}

/// @nodoc
class _$NetworkResultExceptionCopyWithImpl<S, F, E, $Res>
    extends _$NetworkResultCopyWithImpl<S, F, E, $Res>
    implements $NetworkResultExceptionCopyWith<S, F, E, $Res> {
  _$NetworkResultExceptionCopyWithImpl(NetworkResultException<S, F, E> _value,
      $Res Function(NetworkResultException<S, F, E>) _then)
      : super(_value, (v) => _then(v as NetworkResultException<S, F, E>));

  @override
  NetworkResultException<S, F, E> get _value =>
      super._value as NetworkResultException<S, F, E>;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(NetworkResultException<S, F, E>(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkResultException<S, F, E>
    implements NetworkResultException<S, F, E> {
  const _$NetworkResultException(this.exception);

  @override
  final String exception;

  @override
  String toString() {
    return 'NetworkResult<$S, $F, $E>.exception(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkResultException<S, F, E> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  $NetworkResultExceptionCopyWith<S, F, E, NetworkResultException<S, F, E>>
      get copyWith => _$NetworkResultExceptionCopyWithImpl<S, F, E,
          NetworkResultException<S, F, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
    required TResult Function(String exception) exception,
  }) {
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
  }) {
    return exception?.call(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkResultSuccess<S, F, E> value) success,
    required TResult Function(NetworkResultFailure<S, F, E> value) failure,
    required TResult Function(NetworkResultException<S, F, E> value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkResultSuccess<S, F, E> value)? success,
    TResult Function(NetworkResultFailure<S, F, E> value)? failure,
    TResult Function(NetworkResultException<S, F, E> value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class NetworkResultException<S, F, E>
    implements NetworkResult<S, F, E> {
  const factory NetworkResultException(String exception) =
      _$NetworkResultException<S, F, E>;

  String get exception;
  @JsonKey(ignore: true)
  $NetworkResultExceptionCopyWith<S, F, E, NetworkResultException<S, F, E>>
      get copyWith => throw _privateConstructorUsedError;
}
