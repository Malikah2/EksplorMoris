import 'package:flutter/material.dart';
import 'package:example/pages/details_page.dart';
import 'package:example/models/tourist_places_model.dart' as tp;

import '../models/tourist_places_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final tp.RoundTouristPlace touristPlace = touristPlaces[index];
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailsPage(),
              ),
              );
            },
          child: Chip(
            label: Text(touristPlace.name),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlace.image),
            ),
            backgroundColor: Colors.white,
            elevation: 1,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          );
        },
        separatorBuilder: (context, index) =>
        const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: touristPlaces.length,
      ),
    );
  }
}