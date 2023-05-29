// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseHeader _$$_ResponseHeaderFromJson(Map<String, dynamic> json) =>
    _$_ResponseHeader(
      xRateLimitLimit: (json['x-rate-limit-limit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      xRateLimitRemaining: (json['x-rate-limit-remaining'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      xRateLimitReset: (json['x-rate-limit-reset'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ResponseHeaderToJson(_$_ResponseHeader instance) =>
    <String, dynamic>{
      'x-rate-limit-limit': instance.xRateLimitLimit,
      'x-rate-limit-remaining': instance.xRateLimitRemaining,
      'x-rate-limit-reset': instance.xRateLimitReset,
    };
