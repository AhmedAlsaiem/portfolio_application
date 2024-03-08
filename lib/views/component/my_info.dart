import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/views/component/acount.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xff242430),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 4),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/images/A_Elsaiem.png',
              ),
            ),
            Spacer(flex: 1),
            Text(
              'Ahmed Elsaiem',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 16,
                  color: bodyTextColor,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: defaultPadding / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Acount(
                  url: 'https://github.com/AhmedAlsaiem',
                  image: 'assets/icons/github.svg',
                  label: 'Github',
                ),
                SizedBox(width: defaultPadding / 2),
                Acount(
                  url: 'https://www.linkedin.com/in/ahmed-alsaiem-2b3b72228/',
                  image: 'assets/icons/linkedin.svg',
                  label: 'Linkedin',
                ),
                SizedBox(width: defaultPadding / 2),
                Acount(
                  url:
                      'https://drive.google.com/file/d/1tEuzhv_Bd3-FtRazXM6_WH56nMg9xsjv/view?usp=sharing',
                  image: 'assets/icons/download.svg',
                  label: 'Cv',
                ),
              ],
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
