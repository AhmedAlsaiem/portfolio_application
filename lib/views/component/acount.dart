import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:url_launcher/url_launcher.dart';

class Acount extends StatelessWidget {
  const Acount({
    super.key,
    required this.url,
    required this.image,
    required this.label,
  });
  final String url;
  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool x = true;
        if (x == true) {
          _launchUrl(url: url);
          x = false;
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: defaultPadding / 4),
          Text(
            label,
            style: const TextStyle(color: bodyTextColor),
          )
        ],
      ),
    );
  }
}

Future<void> _launchUrl({
  required String url,
}) async {
  Uri link = Uri.parse(url);
  if (await canLaunchUrl(link)) {
    await launchUrl(link);
  } else {
    throw Exception('Could not launch $url');
  }
}
