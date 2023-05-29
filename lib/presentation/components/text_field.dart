import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

final _nameRegex = RegExp(
  r"^[\p{L} ,.'-]*$",
  caseSensitive: false,
  unicode: true,
  dotAll: true,
);

class BlingCCTextField extends StatelessWidget {
  final String? placeholder;
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  const BlingCCTextField({
    super.key,
    this.placeholder,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      autofocus: true,
      onChanged: onChanged,
      controller: controller,
      placeholder: placeholder,
      textAlign: TextAlign.center,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.sentences,
      inputFormatters: [FilteringTextInputFormatter.allow(_nameRegex)],
    );
  }
}
