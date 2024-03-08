import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/views/component/knowledge_text.dart';

class KnowledgeSkils extends StatelessWidget {
  const KnowledgeSkils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        Text(
          'Knowledge ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: defaultPadding),
        KnowledgeText(label: 'Flutter, Dart'),
        SizedBox(height: defaultPadding / 2),
        KnowledgeText(label: 'Git, GitHub'),
        SizedBox(height: defaultPadding / 2),
        KnowledgeText(label: 'Clean Code '),
        SizedBox(height: defaultPadding / 2),
        KnowledgeText(label: 'Oop, Data Structure'),
        SizedBox(height: defaultPadding / 2),
        KnowledgeText(label: 'State Management'),
        SizedBox(height: defaultPadding / 2),
        KnowledgeText(label: 'Hive, Firebase'),
        SizedBox(height: defaultPadding / 2),
        KnowledgeText(label: 'Api, postman'),
        SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
