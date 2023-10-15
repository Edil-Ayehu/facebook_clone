import 'package:facebook_clone/utils/app_theme.dart';
import 'package:facebook_clone/widgets/navigation_host.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: const FacebookAppNavigationHost(),
    );
  }
}
