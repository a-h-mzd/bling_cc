import 'package:bling_cc/common/flutter_gen/fonts.gen.dart';
import 'package:bling_cc/l10n/localization.dart';
import 'package:bling_cc/presentation/router/router.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final AppRouter router;
  final LocaleProvider localeProvider;

  const App({
    super.key,
    required this.router,
    required this.localeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: localeProvider,
      child: BlingCCApp(router: router),
    );
  }
}

class BlingCCApp extends StatelessWidget {
  final AppRouter router;

  const BlingCCApp({
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BlingCC',
      theme: ThemeData(fontFamily: FontFamily.sFProRounded),
      routerConfig: router.config(),
      locale: context.watch<LocaleProvider>().locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
