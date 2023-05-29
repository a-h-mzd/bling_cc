import 'package:bling_cc/data/models/agify.dart';
import 'package:bling_cc/data/models/agify_request.dart';

abstract class AgifyRepository {
  Future<AgifyApiModel> fetchAgifiedName(AgifyApiRequestModel request);
}
