// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgifyRequest _$$_AgifyRequestFromJson(Map<String, dynamic> json) =>
    _$_AgifyRequest(
      name: json['name'] as String,
      countryId: json['country_id'] as String?,
    );

Map<String, dynamic> _$$_AgifyRequestToJson(_$_AgifyRequest instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country_id', instance.countryId);
  return val;
}
