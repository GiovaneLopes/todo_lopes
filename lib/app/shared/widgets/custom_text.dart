import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? minFontSize;
  final int? maxLines;
  final Color? color;
  final TextDecoration? textDecoration;
  const CustomText(
    this.text, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.minFontSize,
    this.color,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      minFontSize: minFontSize ?? 12,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: 'Quicksand',
        fontWeight: fontWeight,
        decoration: textDecoration,
        decorationThickness: 2,
        decorationColor: color,
      ),
    );
  }
}
