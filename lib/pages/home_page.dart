import 'package:example/widgets/location_card.dart';
import 'package:example/widgets/nearby_places.dart';
import 'package:example/widgets/recommended_places.dart';
import 'package:example/widgets/tourist_places.dart';
import 'package:ionicons/ionicons.dart';

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
    actions: const [
       CustomIconButton(
        icon: Icon(Ionicons.search_outline),
        ),
     Padding(
       padding: EdgeInsets.only(left: 8.0, right: 12),
       child: CustomIconButton(
        icon: Icon(Ionicons.notifications_outline),
        ),
       ),
    ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children:  [
          // Location card
          const LocationCard(),
          const SizedBox(height: 15,),
          const TouristPlaces(),
          //categories
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommendation", style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: (){}, child: Text("View All")),
            ],
          ),
          //recommendation
          const SizedBox(height: 10,),
          const RecommendedPlaces(),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby From You",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: (){}, child: const Text("View All"),)
            ],
          ),
          const SizedBox(height: 10,),
          const NearbyPlaces(),
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Ionicons.home_outline),
        label: "Home"
    ),
      BottomNavigationBarItem(
        icon: Icon(Ionicons.bookmark_outline),
        label: "Bookmark",
    ),
      BottomNavigationBarItem(
        icon: Icon(Ionicons.ticket_outline),
        label: "Ticket",
      ),
      BottomNavigationBarItem(
        icon: Icon(Ionicons.person_outline),
        label: "Profile",
      )
      ],
    ),
    );
  }
}