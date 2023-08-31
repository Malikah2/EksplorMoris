import 'package:example/firebase_options.dart';
import 'package:example/pages/settings_page.dart';
import 'package:example/pages/welcome_page.dart.dart';
import 'package:example/repository/authentication_repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return GetMaterialApp(
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      title: 'EksplorMoris',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      theme: themeController.theme,

      home:  WelcomePage(),
    );
  }
}

