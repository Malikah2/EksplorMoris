// import 'package:flutter/material.dart';
//
// class ApplicationGuidePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Application Guide"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(height: 10,),
//               Text(
//                 "Welcome to the Application Guide!",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 15),
//               Text(
//                 "Description",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.lightBlueAccent,
//                 ),
//               ),
//               SizedBox(height: 15),
//               Text(
//                 "Our app is designed to be your trusted \n companion, offering a curated selection \nof the most enchanting places to visit, from pristine beaches to lush mountains, vibrant markets to serene gardens. Whether you're an adventurer seeking thrilling experiences or a leisure traveler craving relaxation, our app provides a personalized guide to help you create unforgettable memories in this tropical haven. Uncover the rich culture, captivating history, and stunning landscapes of Mauritius with the convenience of our app in your pocket. Get ready to explore and immerse yourself in the wonders of this island paradise!",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 18,
//                 ),
//               ),
//               SizedBox(height: 15,),
//               Text(
//                 "How to use EksploreMoris",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.lightBlueAccent,),
//               ),
//               SizedBox(height: 15,),
//               Text(
//                 "1. The home page guides you the exotic locations around the island. \n 2. The nearby places feature helps you locate wonderful locations near your location. \n 3. You can search desired locations through the search bar. \n 4. The emergency page assists you for emergency situations through emergency hotlines and locations. \n 5. The favourites page allows you to bookmark your favourite locations in one place.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 18,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application Guide"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Step 1: Welcome Message
            Text(
              "Welcome to the Application Guide!",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Step 2: Description Title
            Text(
              "Description",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 10),
            // Step 3: Description Content
            Text(
              "Our app is designed to be your trusted companion, offering a curated selection of the most enchanting places to visit, from pristine beaches to lush mountains, vibrant markets to serene gardens. Whether you're an adventurer seeking thrilling experiences or a leisure traveler craving relaxation, our app provides a personalized guide to help you create unforgettable memories in this tropical haven.\n\nUncover the rich culture, captivating history, and stunning landscapes of Mauritius with the convenience of our app in your pocket. Get ready to explore and immerse yourself in the wonders of this island paradise!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 30),
            // Step 4: How to Use Title
            Text(
              "How to use EksploreMoris",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 10),
            // Step 5: How to Use Steps
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildStepRow("The home page guides you to exotic locations around the island."),
                buildStepRow("The nearby places feature helps you locate wonderful locations near your location."),
                buildStepRow("You can search desired locations through the search bar."),
                buildStepRow("The emergency page assists you with emergency hotlines, hospitals, pharmacies and banks."),
                buildStepRow("The favorites page allows you to bookmark your favorite locations in one place for future use."),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Utility function to build formatted step rows
  Widget buildStepRow(String stepText) {
    return Padding(
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
    );
  }
}
