import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PerosonInfo(title: 'Country', des: 'Egypt'),
        PerosonInfo(title: 'City', des: 'Fayoum'),
        PerosonInfo(title: 'Age', des: '20'),
      ],
    );
  }
}

class PerosonInfo extends StatelessWidget {
  const PerosonInfo({
    super.key,
    required this.title,
    required this.des,
  });
  final String title;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            des,
            style: const TextStyle(color: bodyTextColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
