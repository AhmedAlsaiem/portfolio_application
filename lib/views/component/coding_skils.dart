import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/views/component/animated_linear_progress_indicator.dart';

class CodingSkils extends StatelessWidget {
  const CodingSkils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 4),
        Text(
          'Coding ',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding),
        AnimatedLinearProgressIndicator(
          label: 'Flutter',
          value: 0.95,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Dart',
          value: 0.9,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Oop',
          value: 0.85,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Mvvm',
          value: 0.75,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Firebase',
          value: 0.85,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Rest Api',
          value: 0.85,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Api Collections',
          value: 0.80,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'State Managment',
          value: 0.85,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Data Structure',
          value: 0.80,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Local Data base',
          value: 0.75,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'C++',
          value: 0.9,
        ),
        SizedBox(height: defaultPadding / 2),
        AnimatedLinearProgressIndicator(
          label: 'Stl',
          value: 0.70,
        ),
        SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
