import 'package:flutter/material.dart';
import 'package:my_porto_app/responsive.dart';
import 'package:my_porto_app/views/component/all_product_grid_view.dart';
import 'package:my_porto_app/views/component/home_banner.dart';
import 'package:my_porto_app/views/main_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainView(
        children: [
          HomeBanner(),
          Responsive(
            mobile: AllProductsGridView(childAspectRatio: 2, crossAxisCount: 1),
            desktop:
                AllProductsGridView(childAspectRatio: 1.3, crossAxisCount: 3),
            tablet: AllProductsGridView(
              childAspectRatio: 1.1,
              crossAxisCount: 2,
            ),
            mobileLarge: AllProductsGridView(
              crossAxisCount: 1,
              childAspectRatio: 2,
            ),
          )
        ],
      ),
    );
  }
}
