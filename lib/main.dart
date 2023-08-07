import 'package:example/pages/welcome_page.dart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      title: 'EksplorMoris',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme),

      ),
      home: const WelcomePage(),
    );
  }
}

