import 'package:bling_cc/data/models/agify.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agify.freezed.dart';

@freezed
class AgifyModel with _$AgifyModel {
  const factory AgifyModel({
    required final int? age,
    required final String name,
  }) = _Agify;

  factory AgifyModel.fromApiModel(AgifyApiModel apiModel) {
    return AgifyModel(
      age: apiModel.age,
      name: apiModel.name,
    );
  }
}
