import 'package:example/pages/pharmacy_viewall/pharmacies_viewall.dart';
import 'package:flutter/material.dart';
import 'hospital_otherpage/hospitals_otherpage.dart';
import 'hotline/hotlines.dart';
import 'hospital_viewall/hospitals_viewall.dart';
import 'pharmacy_otherpage/pharmacies_otherpage.dart';
import 'banks_otherpage/banks_otherpage.dart';
import 'banks_viewall/banks_viewall.dart';
import 'package:flutter_tts/flutter_tts.dart';

class OtherPage extends StatelessWidget {
  OtherPage({Key? key}) : super(key: key);
  FlutterTts flutterTts = FlutterTts();

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show a dialog to confirm leaving the app
        bool? shouldLeave = await showExitConfirmationDialog(context);
        return shouldLeave ?? false;
      },
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    speakText("Hotlines");
                  },
                  child: Text(
                    "Hotlines",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Hotlines(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    speakText("Hospitals & Clinics");
                  },
                  child: Text(
                    "Hospitals & Clinics",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllHospitals(),
                        ),
                      );
                    },
                    child: Text("View All")),
              ],
            ),
            const SizedBox(height: 10),
            Hospitals(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    speakText("Pharmacy");
                  },
                  child: Text(
                    "Pharmacy",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllPharmacies(),
                        ),
                      );
                    },
                    child: Text("View All")),
              ],
            ),
            const SizedBox(height: 10),
            Pharmacy(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    speakText("Banks");
                  },
                  child: Text(
                    "Banks",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllBanks(),
                        ),
                      );
                    },
                    child: Text("View All")),
              ],
            ),
            const SizedBox(height: 10),
            Bank(),
          ],
        ),
      ),
    );
  }

  Future<bool?> showExitConfirmationDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Text('Do you really want to exit the app?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true); //Allow exit
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false); //stay in app
              },
            ),
          ],
        );
      },
    );
  }
}
