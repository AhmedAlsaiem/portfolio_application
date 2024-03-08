import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: defaultDuration * 1.3,
              builder: (context, double value, child) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      color: primaryColor,
                      value: value,
                    ),
                    Center(
                      child: Text(
                        '${(value * 100).toInt()} %',
                        style: const TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                );
              }),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(label),
      ],
    );
  }
}
