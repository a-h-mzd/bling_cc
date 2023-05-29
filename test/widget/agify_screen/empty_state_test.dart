import 'package:bling_cc/presentation/components/text_field.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../setup.dart';

void main() {
  final setup = TestSetup();

  testWidgets(
    'Empty screen',
    (WidgetTester tester) async {
      await tester.pumpWidget(setup.app);

      await tester.pumpAndSettle();

      final textFieldFinder = find.byType(BlingCCTextField);

      final BlingCCTextField textField = tester.widget(textFieldFinder);

      expect(
        textField.controller?.text,
        isEmpty,
      );

      expect(
        find.descendant(
          of: textFieldFinder,
          matching: find.text(setup.appLocalizations.name),
        ),
        findsOneWidget,
      );

      expect(
        find.text(setup.appLocalizations.emptyScreenText),
        findsOneWidget,
      );
    },
  );
}
