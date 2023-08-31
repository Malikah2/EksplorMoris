import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ApplicationGuidePage extends StatelessWidget {
  FlutterTts flutterTts = FlutterTts();

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
            onTap: () {
              speakText("Application Guide");
            },
            child: Text("Application Guide")),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Step 1: Welcome Message
            GestureDetector(
              onTap: () {
                speakText("Welcome to the Application Guide!");
              },
              child: Text(
                "Welcome to the Application Guide!",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Step 2: Description Title
            GestureDetector(
              onTap: () {
                speakText("Description");
              },
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Step 3: Description Content
            GestureDetector(
              onTap: () {
                speakText("Our app is designed to be your trusted companion, offering a curated selection of the most enchanting places to visit, from pristine beaches to lush mountains, vibrant markets to serene gardens. Whether you're an adventurer seeking thrilling experiences or a leisure traveler craving relaxation, our app provides a personalized guide to help you create unforgettable memories in this tropical haven.\n\nUncover the rich culture, captivating history, and stunning landscapes of Mauritius with the convenience of our app in your pocket. Get ready to explore and immerse yourself in the wonders of this island paradise!");
              },
              child: Text(
                "Our app is designed to be your trusted companion, offering a curated selection of the most enchanting places to visit, from pristine beaches to lush mountains, vibrant markets to serene gardens. Whether you're an adventurer seeking thrilling experiences or a leisure traveler craving relaxation, our app provides a personalized guide to help you create unforgettable memories in this tropical haven.\n\nUncover the rich culture, captivating history, and stunning landscapes of Mauritius with the convenience of our app in your pocket. Get ready to explore and immerse yourself in the wonders of this island paradise!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Step 4: How to Use Title
            GestureDetector(
              onTap: () {
                speakText("How to use EksploreMoris");
              },
              child: Text(
                "How to use EksplorMoris",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Step 5: How to Use Steps
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildStepRow(context,
                    "The home page guides you to exotic locations around the island."),
                buildStepRow(context,
                    "The nearby places feature helps you locate wonderful locations near your location."),
                buildStepRow(context,
                    "You can search desired locations through the search bar."),
                buildStepRow(context,
                    "The emergency page assists you with emergency hotlines, hospitals, pharmacies and banks."),
                buildStepRow(context,
                    "The favorites page allows you to bookmark your favorite locations in one place for future use."),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Utility function to build formatted step rows
  Widget buildStepRow(BuildContext context, String stepText) {
    return GestureDetector(
      onTap: () {
        speakText(stepText);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0, right: 8.0),
              child: Icon(Icons.check_circle, color: Colors.lightBlueAccent),
            ),
            Expanded(
              child: Text(
                stepText,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
