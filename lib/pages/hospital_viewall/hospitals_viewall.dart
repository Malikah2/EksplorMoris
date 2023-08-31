import 'package:flutter/material.dart';
import '../home_widget.dart';
import 'gvt_hospitals.dart';
import 'priv_hospitals.dart';
import 'package:example/pages/other_page.dart';
import 'package:flutter_tts/flutter_tts.dart';
class AllHospitals extends StatelessWidget {
   AllHospitals({Key? key}) : super(key: key);
FlutterTts flutterTts = FlutterTts();

Future<void> speakText(String text) async{
  await flutterTts.setLanguage("en-US");
  await flutterTts.speak(text);
}
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to the OtherPage screen instead of exiting the app
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Home()),
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
                    speakText("Government Hospitals");
                  },
                  child: Text("Government Hospitals", style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            const SizedBox(height:10),
             AllGvtHospitals(),
            const SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    speakText("Private Hospitals");
                  },
                  child: Text("Private Hospitals", style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            const SizedBox(height:10),
             AllPrivHospitals(),
          ]
        )
      ),
    );
  }
}