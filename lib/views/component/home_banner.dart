import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/responsive.dart';
import 'package:my_porto_app/views/component/custom_animated_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding / 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover My Amazing\n Art Space!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Responsive.isDesktop(context) ? 32 : 18,
                  ),
                ),
                const SizedBox(height: defaultPadding / 3),
                const CustomAnimatedText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'EXPLORE NOW',
                      style: TextStyle(
                        color: darkColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: primaryColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        )),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
