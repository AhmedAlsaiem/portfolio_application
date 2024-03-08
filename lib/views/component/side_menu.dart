import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/views/component/coding_skils.dart';
import 'package:my_porto_app/views/component/knowledge_skils.dart';
import 'package:my_porto_app/views/component/location_info.dart';
import 'package:my_porto_app/views/component/my_info.dart';
import 'package:my_porto_app/views/component/skils_category.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  LocationInfo(),
                  Divider(),
                  Skils(),
                  Divider(),
                  CodingSkils(),
                  Divider(),
                  KnowledgeSkils(),
                  Divider(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
