import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/services/projects_info.dart';
import 'package:my_porto_app/views/component/custom_project_card.dart';

class AllProductsGridView extends StatelessWidget {
  const AllProductsGridView({
    super.key,
    this.childAspectRatio = 1.3,
    this.crossAxisCount = 3,
  });
  final double childAspectRatio;
  final int crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding),
        const Text(
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: defaultPadding),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: childAspectRatio,
              mainAxisSpacing: defaultPadding,
              crossAxisSpacing: defaultPadding,
            ),
            itemBuilder: (context, index) {
              return ProjectCard(
                project: projects[index],
              );
            }),
      ],
    );
  }
}
