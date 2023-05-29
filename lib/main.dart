import 'package:bling_cc/common/injector/injector.dart';
import 'package:bling_cc/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(
    App(
      router: inject(),
      localeProvider: inject(),
    ),
  );
}
