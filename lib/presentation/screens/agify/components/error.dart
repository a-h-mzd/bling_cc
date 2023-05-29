import 'package:bling_cc/l10n/localization.dart';
import 'package:flutter/material.dart';

class AgifyError extends StatelessWidget {
  const AgifyError({
    super.key,
    this.error,
    this.onTap,
  });

  final String? error;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final error = this.error;
    final Widget errorWidget;
    if (error == null) {
      errorWidget = Text(context.localizations.generalError);
    } else {
      errorWidget = Text(error);
    }
    return GestureDetector(
      onTap: onTap,
      child: errorWidget,
    );
  }
}
