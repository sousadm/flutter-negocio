import 'package:flutter/material.dart';
import 'package:negocio/src/config/custom_color.dart';

class CustomTitle extends StatelessWidget {
  final String titulo;
  final String? subtitulo;
  final double? fontSize;

  const CustomTitle({
    super.key,
    required this.titulo,
    this.fontSize = 30,
    this.subtitulo = '',
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      style: TextStyle(fontSize: fontSize),
      children: [
        TextSpan(
          text: titulo,
          style: TextStyle(
              color: CustomColors.customSwatchColor,
              fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: subtitulo,
          style: TextStyle(color: CustomColors.customContrastColor),
        )
      ],
    ));
  }
}
