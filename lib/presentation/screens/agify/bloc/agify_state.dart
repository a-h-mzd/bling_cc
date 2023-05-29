import 'package:bling_cc/common/client/models/response_header.dart';
import 'package:bling_cc/presentation/models/agify.dart';
import 'package:equatable/equatable.dart';

sealed class AgifyState extends Equatable {
  const AgifyState();

  @override
  List<Object?> get props => [];
}

final class AgifyStateEmpty extends AgifyState {
  const AgifyStateEmpty();
}

final class AgifyStateLoading extends AgifyState {
  const AgifyStateLoading();
}

final class AgifyStateSuccess extends AgifyState {
  const AgifyStateSuccess({
    required this.model,
  });

  final AgifyModel model;

  @override
  List<Object?> get props => [model];

  @override
  String toString() => 'AgifyStateSuccess { model: $model }';
}

final class AgifyStateError extends AgifyState {
  const AgifyStateError({
    this.error,
    this.statusCode,
    this.header = const ResponseHeader(),
  });

  final String? error;
  final int? statusCode;
  final ResponseHeader header;

  @override
  List<Object?> get props => [error, statusCode, header];
}
