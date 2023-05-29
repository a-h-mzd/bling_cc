import 'package:freezed_annotation/freezed_annotation.dart';

part 'agify_request.freezed.dart';
part 'agify_request.g.dart';

@freezed
class AgifyApiRequestModel with _$AgifyApiRequestModel {
  const factory AgifyApiRequestModel({
    required final String name,
    @JsonKey(name: 'country_id', includeIfNull: false)
    required final String? countryId,
  }) = _AgifyRequest;

  factory AgifyApiRequestModel.fromJson(Map<String, Object?> json) =>
      _$AgifyApiRequestModelFromJson(json);
}
