
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.white,
      ),
      child: Row(
        children: [
          const CustomTextSpan(),
          const SizedBox(width: defaultPadding / 5),
          const Text('I build '),
          const SizedBox(width: defaultPadding / 4),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('Furniture App',
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText('Coffee Shop App',
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText('Protofilo App',
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText('Learning App',
                speed: const Duration(milliseconds: 60)),
          ]),
          const SizedBox(width: defaultPadding / 5),
          const CustomTextSpan(),
        ],
      ),
    );
  }
}

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        style: TextStyle(
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'Flutter',
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: '>',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
