import 'dart:async';
import 'package:flutter_test/flutter_test.dart';

import 'setup.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  final setup = TestSetup();

  setUp(setup.setUp);

  tearDown(setup.tearDown);

  await testMain();
}
