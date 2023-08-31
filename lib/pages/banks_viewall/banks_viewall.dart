import 'package:example/pages/home_widget.dart';
import 'package:flutter/material.dart';
import '../other_page.dart';
import 'bankslist_all.dart';
import 'package:flutter_tts/flutter_tts.dart';
class AllBanks extends StatelessWidget {
   AllBanks ({Key? key}) : super(key: key);
FlutterTts flutterTts = FlutterTts();
   Future<void> speakText(String text) async {
     await flutterTts.setLanguage("en-US");
     await flutterTts.speak(text);
   }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to the OtherPage screen instead of exiting the app
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Home(),
        )
        );
        return false; // Prevent default back button behavior

      },
      child: Scaffold(
          body: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(14),
              children:[
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        speakText("Banks");
                      },
                      child: Text("Banks", style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height:10),
                 BanksList(),
              ]
          )
      ),
    );
  }
}