
import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.label,
    required this.value,
  });
  final String label;
  final double value;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: value),
        duration: defaultDuration * 1.3,
        builder: (context, double value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(label), Text('${(value * 100).toInt()} %')],
              ),
              const SizedBox(height: defaultPadding / 2),
              LinearProgressIndicator(
                color: primaryColor,
                value: value,
                backgroundColor: darkColor,
              ),
            ],
          );
        });
  }
}
