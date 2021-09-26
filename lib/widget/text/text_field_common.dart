import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemo/config/resource_mananger.dart';
import 'package:flutterdemo/util/extension/extension_util.dart';

class TextFieldCommon extends StatelessWidget {
  final bool enable;
  final double? width;
  final double? height;

  // final String text;
  final TextEditingController? controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final double? size;
  final double? hintSize;
  final TextAlign? align;
  final TextInputType? keyboardType;
  final Color? hintColor;
  final Color? textColor;
  final Color? backgroundColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final double? borderRadius;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onSubmitted;
  final int? doubleLength;
  final int? maxLetters;
  final InputDecoration? decoration;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const TextFieldCommon(
      {Key? key,
      this.controller,
      this.enable = true,
      this.width,
      this.height,
      this.hintText,
      this.onChanged,
      this.size,
      this.hintSize,
      this.align,
      this.keyboardType,
      this.hintColor,
      this.textColor,
      this.backgroundColor,
      this.maxLines,
      this.focusNode,
      this.borderRadius,
      this.inputFormatters,
      this.textInputAction,
      this.onSubmitted,
      this.doubleLength,
      this.maxLetters,
      this.decoration,
      this.prefixIcon,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: height ?? 70.height,
      width: width ?? 200.width,
      decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius ?? 0)),
      child: ExtendedTextField(
        controller: controller,
        decoration: decoration ??
            InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(fontSize: hintSize, color: hintColor),
                border: InputBorder.none,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon),
        onChanged: onChanged,
        enabled: enable,
        textAlign: align ?? TextAlign.start,
        keyboardType: keyboardType,
        style: TextStyle(
            color: textColor ?? ColorsHelper.threeColor,
            fontSize: size?.sp ?? 24.sp,
            backgroundColor: Colors.transparent),
        maxLines: maxLines ?? 1,
        focusNode: focusNode ?? FocusNode(),
        textInputAction: textInputAction ?? TextInputAction.done,
        onSubmitted: onSubmitted,
      ),
    );
  }
}
