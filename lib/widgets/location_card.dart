import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LocationCard extends StatelessWidget {
   LocationCard({Key? key}) : super(key: key);
FlutterTts flutterTts = FlutterTts();
   Future<void> speakText(String text) async {
     await flutterTts.setLanguage("en-US");
     await flutterTts.speak(text);
   }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              'assets/map.png',
              width: 100,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    speakText("Your Location");
                  },
                  child: Text(
                    "Your Location",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: (){
                    speakText("Tamassa Bel Ombre");
                  },
                  child: Text(
                    "Tamassa Bel Ombre",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}