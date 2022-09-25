import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomBannerText extends StatelessWidget {
  final double? height;
  final List<String> lista;

  const CustomBannerText({
    super.key,
    this.height = 30,
    required this.lista,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.blueGrey,
          fontSize: 25,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          pause: Duration.zero,
          animatedTexts:
              lista.map((number) => FadeAnimatedText(number)).toList(),
        ),
      ),
    );
  }
}
