import 'package:example/pages/round_details_page.dart';
import 'package:flutter/material.dart';
import 'package:example/models/tourist_places_model.dart' as tp;

import '../models/tourist_places_model.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

  final List<roundDetails> beachDetails = [
    roundDetails(
        name: 'Beach1',
        image: 'assets/lavanille.jpg',
        description: 'details',
      subtitle: '',
      price: '',
      location: '',
      rating: '',
      duration: '',
      image1: '',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
  ];
  final List<roundDetails> foodDetails = [
    roundDetails(
      name: 'Beach1',
      image: 'assets/lavanille.jpg',
      description: 'details',
      subtitle: '',
      price: '',
      location: '',
      rating: '',
      duration: '',
      image1: '',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
  ];
  final List<roundDetails> islandDetails = [
    roundDetails(
      name: 'Beach1',
      image: 'assets/lavanille.jpg',
      description: 'details',
      subtitle: '',
      price: '',
      location: '',
      rating: '',
      duration: '',
      image1: '',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
  ];
  final List<roundDetails> mallDetails = [
    roundDetails(
      name: 'Beach1',
      image: 'assets/lavanille.jpg',
      description: 'details',
      subtitle: '',
      price: '',
      location: '',
      rating: '',
      duration: '',
      image1: '',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
  ];
  final List<roundDetails> hotelDetails = [
    roundDetails(
      name: 'Beach1',
      image: 'assets/lavanille.jpg',
      description: 'details',
      subtitle: '',
      price: '',
      location: '',
      rating: '',
      duration: '',
      image1: '',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
  ];


  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 235,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
              return SizedBox(
                  width: 220,
              child: Card(
                elevation: 0.4,
                color: Colors.white70,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    if (index == 0){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => roundDetailsPage(
                            placeList: beachDetails
                          ),
                      ),
                      );
                    } else if (index == 1) {
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => roundDetailsPage(
                            placeList: foodDetails
                        ),
                      )
                      );
                    } else if (index == 2) {
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => roundDetailsPage(
                            placeList: islandDetails),
                      ),
                      );
                    } else if (index == 3) {
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => roundDetailsPage(
                          placeList: mallDetails),
                        ),
                      );
                    } else if (index == 4){
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => roundDetailsPage(
                          placeList: hotelDetails),
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              touristPlaces[index].image,
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                              height: 150,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Center(
                            child: Text(
                              touristPlaces[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              );
          },
          separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: 10),
          ),
          itemCount: touristPlaces.length,
        ),
            );
      }
}