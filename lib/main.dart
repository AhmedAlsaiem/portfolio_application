import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_porto_app/cosntant.dart';
import 'package:my_porto_app/views/home/home_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) {
        return const ProtofiloApp();
      },
    ),
  );
}

class ProtofiloApp extends StatelessWidget {
  const ProtofiloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
