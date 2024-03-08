

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_porto_app/cosntant.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label,
          style: const TextStyle(color: bodyTextColor),
        )
      ],
    );
  }
}
