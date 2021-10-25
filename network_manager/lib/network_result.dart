import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_result.freezed.dart';

@freezed
abstract class NetworkResult<S, F, E> with _$NetworkResult<S, F, E> {
  const factory NetworkResult.success(S success) = NetworkResultSuccess;
  const factory NetworkResult.failure(F failure) = NetworkResultFailure;
  const factory NetworkResult.exception(String exception) = NetworkResultException;
}
