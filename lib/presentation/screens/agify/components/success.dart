import 'package:bling_cc/l10n/localization.dart';
import 'package:bling_cc/presentation/models/agify.dart';
import 'package:bling_cc/presentation/screens/agify/bloc/agify_state.dart';
import 'package:flutter/material.dart';

class AgifySuccess extends StatelessWidget {
  const AgifySuccess({
    super.key,
    required this.success,
  });

  final AgifyStateSuccess success;

  AgifyModel get model => success.model;

  @override
  Widget build(BuildContext context) {
    final age = model.age;
    final Widget ageWidget;
    if (age == null) {
      ageWidget = Text(context.localizations.noAgeAvailable);
    } else {
      ageWidget = Text(context.localizations.describeAge(age));
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(context.localizations.describeName(model.name)),
        const SizedBox(height: 4.0),
        ageWidget,
      ],
    );
  }
}
