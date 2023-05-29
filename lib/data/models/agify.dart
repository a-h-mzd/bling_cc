import 'package:freezed_annotation/freezed_annotation.dart';

part 'agify.freezed.dart';
part 'agify.g.dart';

@freezed
class AgifyApiModel with _$AgifyApiModel {
  const factory AgifyApiModel({
    required final int? age,
    required final String name,
  }) = _Agify;

  factory AgifyApiModel.fromJson(Map<String, Object?> json) =>
      _$AgifyApiModelFromJson(json);
}
