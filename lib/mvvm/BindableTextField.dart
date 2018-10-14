import 'package:demo_app_flutter/mvvm/Observable.dart';
import 'package:flutter/material.dart';

class BindableTextField extends TextField {
  final Observable<String> _observableText;

  final TextEditingController _textEditingController = TextEditingController();

  bool _typed = false;
  bool _set = false;

  BindableTextField(
    this._observableText, {
    Key key,
    controller,
    focusNode,
    decoration = const InputDecoration(),
    TextInputType keyboardType,
    textInputAction,
    textCapitalization = TextCapitalization.none,
    style,
    textAlign = TextAlign.start,
    autofocus = false,
    obscureText = false,
    autocorrect = true,
    maxLines = 1,
    maxLength,
    maxLengthEnforced = true,
    onChanged,
    onEditingComplete,
    onSubmitted,
    inputFormatters,
    enabled,
    cursorWidth = 2.0,
    cursorRadius,
    cursorColor,
    keyboardAppearance,
    scrollPadding = const EdgeInsets.all(20.0),
  }) : super(
          key: key,
          controller: controller,
          focusNode: focusNode,
          decoration: decoration,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          style: style,
          textAlign: textAlign,
          autofocus: autofocus,
          obscureText: obscureText,
          autocorrect: autocorrect,
          maxLines: maxLines,
          maxLength: maxLength,
          maxLengthEnforced: maxLengthEnforced,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
        ) {
    _observableText.listen((data) {
      if (!_typed) {
        _set = true;
        _textEditingController.text = data;
      } else
        _typed = false;
    });
  }

  @override
  ValueChanged<String> get onChanged => (newText) {
        if (!_set) {
          _typed = true;
          _observableText.value = newText;
        } else
          _set = false;
      };

  @override
  TextEditingController get controller => _textEditingController;
}
