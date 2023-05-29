import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bling_cc/common/injector/injector.dart';
import 'package:bling_cc/l10n/localization.dart';
import 'package:bling_cc/presentation/components/text_field.dart';
import 'package:bling_cc/presentation/screens/agify/bloc/agify_bloc.dart';
import 'package:bling_cc/presentation/screens/agify/bloc/agify_event.dart';
import 'package:bling_cc/presentation/screens/agify/bloc/agify_state.dart';
import 'package:bling_cc/presentation/screens/agify/components/error.dart';
import 'package:bling_cc/presentation/screens/agify/components/success.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

@RoutePage()
class AgifyScreen extends StatefulWidget with AutoRouteWrapper {
  const AgifyScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AgifyBloc>(
      create: (_) => inject(),
      child: this,
    );
  }

  @override
  State<AgifyScreen> createState() => _AgifyScreenState();
}

class _AgifyScreenState extends State<AgifyScreen> {
  final nameController = TextEditingController();
  String? countryId = 'us';

  void showError({
    required final BuildContext context,
    required final AgifyStateError stateError,
  }) {
    final xRateResetSeconds = stateError.header.xRateReset;
    String? errorMessage;
    if (stateError.statusCode == HttpStatus.tooManyRequests &&
        xRateResetSeconds != null) {
      final xRateReset = Duration(seconds: xRateResetSeconds);
      if (xRateReset > const Duration(hours: 1)) {
        errorMessage = context.localizations
            .tooManyRequestsRetryInHours(xRateReset.inHours + 1);
      } else if (xRateReset > const Duration(minutes: 1)) {
        errorMessage = context.localizations
            .tooManyRequestsRetryInMinutes(xRateReset.inMinutes + 1);
      } else {
        errorMessage = context.localizations
            .tooManyRequestsRetryInSeconds(xRateReset.inSeconds + 1);
      }
    }
    FToast()
      ..init(context)
      ..showToast(
        gravity: ToastGravity.BOTTOM,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(stateError.error ?? context.localizations.generalError),
            if (errorMessage != null) ...[
              const SizedBox(height: 4.0),
              Text(errorMessage),
            ],
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final AgifyBloc agifyBloc = context.read();
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 300,
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: const Alignment(.0, .4),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CountryCodePicker(
                                padding: EdgeInsets.zero,
                                alignLeft: true,
                                initialSelection: countryId?.toUpperCase(),
                                onChanged: (country) {
                                  countryId = country.code?.toLowerCase();
                                  agifyBloc.add(
                                    AgifyNameChanged(
                                      name: nameController.text,
                                      countryId: countryId,
                                    ),
                                  );
                                },
                                showCountryOnly: true,
                                showDropDownButton: true,
                                showOnlyCountryWhenClosed: true,
                              ),
                              const SizedBox(height: 8.0),
                              BlingCCTextField(
                                controller: nameController,
                                placeholder: context.localizations.name,
                                onChanged: (name) => agifyBloc.add(
                                  AgifyNameChanged(
                                    name: name,
                                    countryId: countryId,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Expanded(
                        child: Align(
                          alignment: const Alignment(.0, -.4),
                          child: BlocConsumer<AgifyBloc, AgifyState>(
                            bloc: agifyBloc,
                            listener: (context, state) {
                              return switch (state) {
                                AgifyStateError() => showError(
                                    context: context,
                                    stateError: state,
                                  ),
                                _ => null,
                              };
                            },
                            builder: (context, state) {
                              return switch (state) {
                                AgifyStateEmpty() =>
                                  Text(context.localizations.emptyScreenText),
                                AgifyStateLoading() =>
                                  const CircularProgressIndicator.adaptive(),
                                AgifyStateSuccess() =>
                                  AgifySuccess(success: state),
                                AgifyStateError() => AgifyError(
                                    error: state.error,
                                    onTap: () => agifyBloc.add(
                                      AgifyNameChanged(
                                        name: nameController.text,
                                        countryId: countryId,
                                      ),
                                    ),
                                  ),
                              };
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
