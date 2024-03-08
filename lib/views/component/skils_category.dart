import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/views/component/animated_circular_progress_indictor.dart';

class Skils extends StatelessWidget {
  const Skils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            'Skils',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: defaultPadding),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: 'Dart',
                value: 0.95,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: 'Flutter',
                value: 0.9,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: 'Firebase',
                value: 0.90,
              ),
            ),
          ],
        ),
        SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
