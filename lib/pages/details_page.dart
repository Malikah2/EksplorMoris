import 'package:example/pages/tourist_details_page.dart';
import 'package:flutter/material.dart';
import 'package:example/models/tourist_places_model.dart';
import 'package:example/models/tourist_places_model.dart';
import 'package:example/models/tourist_places_model.dart' as tp;

class DetailsPage extends StatelessWidget {
  final tp.TouristPlace touristPlace;

  const DetailsPage({Key? key, required this.touristPlace}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(touristPlace.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              touristPlace.image,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16,),
            Text(
              touristPlace.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8,),
            Text(
              touristPlace.description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
      ),
    );
  }
}