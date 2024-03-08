import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/responsive.dart';
import 'package:my_porto_app/views/component/side_menu.dart';

class MainView extends StatelessWidget {
  const MainView({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.grey,
                    )),
              ),
            ),
      drawer: SideMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              flex: 2,
              child: SideMenu(),
            ),
          // const SizedBox(
          //   width: defaultPadding / 4,
          // ),
          Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
