import 'package:example/pages/welcome_page.dart.dart';
import 'package:flutter/material.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

