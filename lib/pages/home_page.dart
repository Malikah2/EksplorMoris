import 'package:example/repository/authentication_repository/authentication_repository.dart';
import 'package:example/widgets/location_card.dart';
import 'package:example/widgets/nearby_places.dart';
import 'package:example/widgets/recommended_places.dart';
import 'package:example/widgets/tourist_places.dart';
import 'package:ionicons/ionicons.dart';
import 'home_widget.dart';
import 'other_page.dart';

import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text("Good Morning"),
            Text("Malikah",
            style: Theme.of(context).textTheme.labelMedium,

        ),
          ],
        ),
    actions:  [
       CustomIconButton(
        icon: Icon(Ionicons.search_outline),
        ),
     Padding(
       padding: EdgeInsets.only(left: 8.0, right: 12),
       child: IconButton(onPressed: () {
         AuthenticationRepository.instance.logout();
          }, icon:  Icon(Ionicons.arrow_back_circle_outline),

       ),
       ),
    ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children:  [
          // Location card
           LocationCard(),
          const SizedBox(height: 15,),
           TouristPlaces(),
          //categories
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommendation", style: Theme.of(context).textTheme.headline6,
              ),
              //TextButton(onPressed: (){}, child: Text("View All")),
            ],
          ),
          //recommendation
          const SizedBox(height: 10,),
           RecommendedPlaces(),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby From You",
                style: Theme.of(context).textTheme.headline6,
              ),
              //TextButton(onPressed: (){}, child: const Text("View All"),)
            ],
          ),
          const SizedBox(height: 10,),
           NearbyPlaces(nearby: [],),
        ],
      ),
    );
  }
}