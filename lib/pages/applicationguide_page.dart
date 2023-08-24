import 'package:flutter/material.dart';

class ApplicationGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application Guide"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text(
              "Welcome to the Application Guide!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Our app is designed to be your trusted \n companion, offering a curated selection of \n the most enchanting places to visit, from pristine beaches to lush mountains, vibrant markets to serene gardens. Whether you're \n an adventurer seeking thrilling experiences or \n a leisure traveler craving relaxation, our app provides a personalized guide to help you create unforgettable memories in this tropical haven. Uncover the rich culture, captivating history, and stunning landscapes of Mauritius with the convenience of our app in your \n pocket. Get ready to explore and immerse yourself in the wonders of this island paradise!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "3. Third step...",
              style: TextStyle(fontSize: 16),
            ),
            // Add more guide steps as needed
          ],
        ),
      ),
    );
  }
}
