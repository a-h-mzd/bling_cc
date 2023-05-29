import 'package:bling_cc/data/models/agify_request.dart';
import 'package:bling_cc/domain/agify/repository.dart';
import 'package:bling_cc/presentation/models/agify.dart';
import 'package:injectable/injectable.dart';

@injectable
class AgifyUsecase {
  final AgifyRepository agifyRepository;

  const AgifyUsecase({
    required this.agifyRepository,
  });

  Future<AgifyModel> fetchAgifiedName({
    required final String name,
    final String? countryId,
  }) async {
    final request = AgifyApiRequestModel(
      name: name,
      countryId: countryId,
    );
    final agifiedName = await agifyRepository.fetchAgifiedName(request);
    return AgifyModel.fromApiModel(agifiedName);
  }
}
