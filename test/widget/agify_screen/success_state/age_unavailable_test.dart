import 'package:bling_cc/data/agify/endpoints.dart';
import 'package:bling_cc/data/models/agify.dart';
import 'package:bling_cc/data/models/agify_request.dart';
import 'package:bling_cc/presentation/components/text_field.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../setup.dart';

void main() {
  final setup = TestSetup();

  const searchName = 'Amir';
  final searchQuery = const AgifyApiRequestModel(
    name: searchName,
    countryId: null,
  ).toJson();

  final textFieldFinder = find.byType(BlingCCTextField);

  testWidgets(
    'Success state - Age unavailable',
    (WidgetTester tester) async {
      const responseModel = AgifyApiModel(
        name: searchName,
        age: null,
      );
      setup.mockApiSuccess(
        path: AgifyEndpoints.agify,
        queryParameters: searchQuery,
        data: responseModel.toJson(),
      );

      await tester.pumpWidget(setup.app);

      await tester.pumpAndSettle();

      await tester.enterText(textFieldFinder, searchName);

      await tester.pumpAndSettle();

      final BlingCCTextField textField = tester.widget(textFieldFinder);

      expect(
        textField.controller?.text,
        equals(searchName),
      );

      expect(
        find.descendant(
          of: textFieldFinder,
          matching: find.text(setup.appLocalizations.name),
        ),
        findsNothing,
      );

      expect(
        find.text(setup.appLocalizations.describeName(searchName)),
        findsOneWidget,
      );

      expect(
        find.text(setup.appLocalizations.noAgeAvailable),
        findsOneWidget,
      );
    },
  );
}
