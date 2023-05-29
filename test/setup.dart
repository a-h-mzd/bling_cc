import 'dart:io';

import 'package:bling_cc/common/client/http_client.dart';
import 'package:bling_cc/common/injector/injector.dart' as injector;
import 'package:bling_cc/l10n/localization.dart';
import 'package:bling_cc/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class TestSetup {
  static final _i = TestSetup._();

  late DioAdapter _dioAdapter;

  factory TestSetup() => _i;
  TestSetup._() {
    TestWidgetsFlutterBinding.ensureInitialized();
  }

  Future<void> setUp() async {
    injector.configureDependencies();

    _dioAdapter = DioAdapter(dio: client.dio);
  }

  Future<void> tearDown() async {
    await _getIt.reset();
  }

  App get app => App(
        key: UniqueKey(),
        router: inject(),
        localeProvider: inject(),
      );

  AppLocalizations get appLocalizations =>
      inject<LocaleProvider>().appLocalization;

  GetIt get _getIt => GetIt.instance;

  T Function<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) inject = injector.inject;

  DioClient get client => inject();

  Future<T> replaceSingleton<T extends Object>(T instance) async {
    await _getIt.unregister<T>();
    return _getIt.registerSingleton<T>(instance);
  }

  Future<void> replaceFactory<T extends Object>(T Function() factory) async {
    await _getIt.unregister<T>();
    _getIt.registerFactory<T>(factory);
  }

  void mockApiSuccess({
    required final String path,
    final Map<String, dynamic>? headers,
    required final Map<String, dynamic> data,
    final Map<String, dynamic>? queryParameters,
  }) {
    _dioAdapter.onGet(
      path,
      (server) => server.reply(HttpStatus.ok, data),
      headers: headers,
      queryParameters: queryParameters,
    );
  }

  void mockApiFail({
    required final String path,
    required final int statusCode,
    final String? message,
    final Map<String, dynamic>? headers,
    final Map<String, dynamic>? queryParameters,
  }) {
    assert(statusCode != HttpStatus.ok);
    final response = {'error': message};
    _dioAdapter.onGet(
      path,
      (server) => server.reply(statusCode, response),
      headers: headers,
      queryParameters: queryParameters,
    );
  }
}
