import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/extensions/screen_extension.dart';

class TextFormFieldWay extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? prefix;
  final String? prefixText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? suffixText;
  final String? errorText;
  final bool autofocus;
  final bool? enabled;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;
  final bool autocorrect;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final int? maxLength;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const TextFormFieldWay({
    Key? key,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.autofillHints,
    this.textInputAction,
    this.prefix,
    this.prefixIcon,
    this.prefixText,
    this.suffix,
    this.suffixIcon,
    this.suffixText,
    this.errorText,
    this.validator,
    this.enabled,
    this.inputFormatters,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.maxLength,
    this.autofocus = false,
    this.autovalidateMode,
    this.autocorrect = true,
    this.obscureText = false,
    this.controller,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      autofocus: autofocus,
      enabled: enabled,
      obscureText: obscureText,
      autocorrect: autocorrect,
      autovalidateMode: autovalidateMode,
      cursorColor: theme.primaryColor,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      maxLength: maxLength,
      autofillHints: autofillHints,
      onFieldSubmitted: onFieldSubmitted,
      cursorHeight: 24.scale,
      style: TextStyle(
        fontSize: 18.scale,
        fontWeight: FontWeight.w500,
      ),
      buildCounter: (
        BuildContext context, {
        int? currentLength,
        int? maxLength,
        bool? isFocused,
      }) =>
          null,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        labelText: labelText,
        isCollapsed: true,
        prefix: prefix,
        contentPadding: EdgeInsets.all(8.0.scale),
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: prefixIcon,
        ),
        prefixText: prefixText,
        suffix: suffix,
        suffixIcon: suffixIcon,
        suffixText: suffixText,
        focusColor: theme.primaryColor,
        alignLabelWithHint: true,
        suffixIconConstraints: BoxConstraints(
          maxHeight: 40.scale,
          maxWidth: 40.scale,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 40.scale,
          maxWidth: 40.scale,
        ),
        labelStyle: TextStyle(
          fontSize: 18.scale,
          fontWeight: FontWeight.w500,
        ),
        hintStyle: TextStyle(
          fontSize: 18.scale,
          fontWeight: FontWeight.w500,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: theme.primaryColor,
            width: 2.scale,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: theme.primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
