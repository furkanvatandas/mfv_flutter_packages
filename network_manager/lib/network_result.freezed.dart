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

  _Success<S, F, E> success<S, F, E>(S success) {
    return _Success<S, F, E>(
      success,
    );
  }

  _Failure<S, F, E> failure<S, F, E>(F failure) {
    return _Failure<S, F, E>(
      failure,
    );
  }

  _Exception<S, F, E> exception<S, F, E>(String exception) {
    return _Exception<S, F, E>(
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
    required TResult Function(_Success<S, F, E> value) success,
    required TResult Function(_Failure<S, F, E> value) failure,
    required TResult Function(_Exception<S, F, E> value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
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
abstract class _$SuccessCopyWith<S, F, E, $Res> {
  factory _$SuccessCopyWith(
          _Success<S, F, E> value, $Res Function(_Success<S, F, E>) then) =
      __$SuccessCopyWithImpl<S, F, E, $Res>;
  $Res call({S success});
}

/// @nodoc
class __$SuccessCopyWithImpl<S, F, E, $Res>
    extends _$NetworkResultCopyWithImpl<S, F, E, $Res>
    implements _$SuccessCopyWith<S, F, E, $Res> {
  __$SuccessCopyWithImpl(
      _Success<S, F, E> _value, $Res Function(_Success<S, F, E>) _then)
      : super(_value, (v) => _then(v as _Success<S, F, E>));

  @override
  _Success<S, F, E> get _value => super._value as _Success<S, F, E>;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_Success<S, F, E>(
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$_Success<S, F, E> implements _Success<S, F, E> {
  const _$_Success(this.success);

  @override
  final S success;

  @override
  String toString() {
    return 'NetworkResult<$S, $F, $E>.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<S, F, E> &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<S, F, E, _Success<S, F, E>> get copyWith =>
      __$SuccessCopyWithImpl<S, F, E, _Success<S, F, E>>(this, _$identity);

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
    required TResult Function(_Success<S, F, E> value) success,
    required TResult Function(_Failure<S, F, E> value) failure,
    required TResult Function(_Exception<S, F, E> value) exception,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<S, F, E> implements NetworkResult<S, F, E> {
  const factory _Success(S success) = _$_Success<S, F, E>;

  S get success => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<S, F, E, _Success<S, F, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<S, F, E, $Res> {
  factory _$FailureCopyWith(
          _Failure<S, F, E> value, $Res Function(_Failure<S, F, E>) then) =
      __$FailureCopyWithImpl<S, F, E, $Res>;
  $Res call({F failure});
}

/// @nodoc
class __$FailureCopyWithImpl<S, F, E, $Res>
    extends _$NetworkResultCopyWithImpl<S, F, E, $Res>
    implements _$FailureCopyWith<S, F, E, $Res> {
  __$FailureCopyWithImpl(
      _Failure<S, F, E> _value, $Res Function(_Failure<S, F, E>) _then)
      : super(_value, (v) => _then(v as _Failure<S, F, E>));

  @override
  _Failure<S, F, E> get _value => super._value as _Failure<S, F, E>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure<S, F, E>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$_Failure<S, F, E> implements _Failure<S, F, E> {
  const _$_Failure(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'NetworkResult<$S, $F, $E>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure<S, F, E> &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<S, F, E, _Failure<S, F, E>> get copyWith =>
      __$FailureCopyWithImpl<S, F, E, _Failure<S, F, E>>(this, _$identity);

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
    required TResult Function(_Success<S, F, E> value) success,
    required TResult Function(_Failure<S, F, E> value) failure,
    required TResult Function(_Exception<S, F, E> value) exception,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<S, F, E> implements NetworkResult<S, F, E> {
  const factory _Failure(F failure) = _$_Failure<S, F, E>;

  F get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<S, F, E, _Failure<S, F, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExceptionCopyWith<S, F, E, $Res> {
  factory _$ExceptionCopyWith(
          _Exception<S, F, E> value, $Res Function(_Exception<S, F, E>) then) =
      __$ExceptionCopyWithImpl<S, F, E, $Res>;
  $Res call({String exception});
}

/// @nodoc
class __$ExceptionCopyWithImpl<S, F, E, $Res>
    extends _$NetworkResultCopyWithImpl<S, F, E, $Res>
    implements _$ExceptionCopyWith<S, F, E, $Res> {
  __$ExceptionCopyWithImpl(
      _Exception<S, F, E> _value, $Res Function(_Exception<S, F, E>) _then)
      : super(_value, (v) => _then(v as _Exception<S, F, E>));

  @override
  _Exception<S, F, E> get _value => super._value as _Exception<S, F, E>;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Exception<S, F, E>(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Exception<S, F, E> implements _Exception<S, F, E> {
  const _$_Exception(this.exception);

  @override
  final String exception;

  @override
  String toString() {
    return 'NetworkResult<$S, $F, $E>.exception(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exception<S, F, E> &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ExceptionCopyWith<S, F, E, _Exception<S, F, E>> get copyWith =>
      __$ExceptionCopyWithImpl<S, F, E, _Exception<S, F, E>>(this, _$identity);

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
    required TResult Function(_Success<S, F, E> value) success,
    required TResult Function(_Failure<S, F, E> value) failure,
    required TResult Function(_Exception<S, F, E> value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<S, F, E> value)? success,
    TResult Function(_Failure<S, F, E> value)? failure,
    TResult Function(_Exception<S, F, E> value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _Exception<S, F, E> implements NetworkResult<S, F, E> {
  const factory _Exception(String exception) = _$_Exception<S, F, E>;

  String get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExceptionCopyWith<S, F, E, _Exception<S, F, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
