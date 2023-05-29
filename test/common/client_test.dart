import 'dart:io';

import 'package:bling_cc/data/agify/endpoints.dart';
import 'package:bling_cc/data/models/agify.dart';
import 'package:bling_cc/data/models/agify_request.dart';
import 'package:bling_cc/domain/agify/usecase.dart';
import 'package:bling_cc/presentation/models/agify.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import '../setup.dart';

void main() {
  final setup = TestSetup();

  test(
    'Successful fetch',
    () async {
      const testAge = 24;
      const testName = 'Amir';
      const responseModel = AgifyApiModel(name: testName, age: testAge);

      setup.mockApiSuccess(
        path: AgifyEndpoints.agify,
        queryParameters: const AgifyApiRequestModel(
          name: testName,
          countryId: null,
        ).toJson(),
        data: responseModel.toJson(),
      );

      final AgifyUsecase agifyUsecase = setup.inject();

      expect(
        await agifyUsecase.fetchAgifiedName(name: testName),
        equals(AgifyModel.fromApiModel(responseModel)),
      );
    },
  );

  test(
    'Failure fetch',
    () async {
      const testName = 'Amir';

      setup.mockApiFail(
        path: AgifyEndpoints.agify,
        statusCode: HttpStatus.tooManyRequests,
        queryParameters: const AgifyApiRequestModel(
          name: testName,
          countryId: null,
        ).toJson(),
      );

      final AgifyUsecase agifyUsecase = setup.inject();

      expect(
        agifyUsecase.fetchAgifiedName(name: testName),
        throwsA(isA<DioError>()),
      );
    },
  );
}
