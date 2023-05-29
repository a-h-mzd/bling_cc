import 'package:bling_cc/common/client/http_client.dart';
import 'package:bling_cc/data/agify/endpoints.dart';
import 'package:bling_cc/data/models/agify.dart';
import 'package:bling_cc/data/models/agify_request.dart';
import 'package:bling_cc/domain/agify/repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AgifyRepository)
class AgifyApi implements AgifyRepository {
  const AgifyApi({
    required this.dioClient,
  });

  final DioClient dioClient;

  @override
  Future<AgifyApiModel> fetchAgifiedName(AgifyApiRequestModel request) async {
    final agifiedName = await dioClient.get<Map<String, Object?>>(
      AgifyEndpoints.agify,
      queryParameters: request.toJson(),
    );
    return AgifyApiModel.fromJson(agifiedName);
  }
}
