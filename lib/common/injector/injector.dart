import 'package:bling_cc/common/injector/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;

@InjectableInit(
  throwOnMissingDependencies: true,
)
void configureDependencies() {
  _getIt.init();
}

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    _getIt.get<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );

Future<T> injectAsync<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    _getIt.getAsync<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );
