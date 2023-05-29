import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_header.freezed.dart';
part 'response_header.g.dart';

@freezed
class ResponseHeader with _$ResponseHeader {
  const factory ResponseHeader({
    @JsonKey(name: 'x-rate-limit-limit') final List<String>? xRateLimitLimit,
    @JsonKey(name: 'x-rate-limit-remaining')
    final List<String>? xRateLimitRemaining,
    @JsonKey(name: 'x-rate-limit-reset') final List<String>? xRateLimitReset,
  }) = _ResponseHeader;
  const ResponseHeader._();

  factory ResponseHeader.fromJson(Map<String, Object?> json) =>
      _$ResponseHeaderFromJson(json);

  int? get xRateLimit => int.tryParse(xRateLimitLimit?.firstOrNull ?? '');
  int? get xRateRemaining =>
      int.tryParse(xRateLimitRemaining?.firstOrNull ?? '');
  int? get xRateReset => int.tryParse(xRateLimitReset?.firstOrNull ?? '');
}
