import 'package:example/pages/tourist_details_page.dart';
import 'package:flutter/material.dart';
import 'package:example/models/recommended_places_model.dart';

class RecommendedPlaces extends StatelessWidget {
  RecommendedPlaces({Key? key}) : super(key: key);
  final List<TouristPlace> TouristDetailsPageDolpins = [
    TouristPlace(
      image: 'assets/dolphin1.jpg',
      name: 'Dolphin trip/Private boat tour le morne/Crystal rock LydiaBoat',
      subtitle: 'About',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',
    ),
    TouristPlace(
      image: 'assets/dolphin4.jpg',
      name: 'Full-Day Mauritius Volcanic Wonders Tour Including Swimming with Wild Dolphins',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/dolphin3.jpg',
      name: 'Swimming with Wild Dolphins and Whale Watching (Private Transportation Optional)',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/dolphin5.jpg',
      name: 'Le Havanah Boat/sunrise watching & swimming Dolpins/Lunch on Benitier Island',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageNature = [
    TouristPlace(
      image: 'assets/nature1.jpg',
      name: 'South-West of Mauritius Private Full-Day Scenic Tour',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/nature2.jpg',
      name: 'Enchanting South of Mauritius: Full-day tour  Incl CASELA Park, Lunch & Transfer',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/nature3.jpg',
      name: 'Snorkelling with Giant Turtles, The Red Church, Pamplemousses Garden & Port Louis',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/nature4.jpg',
      name: 'Casela World of Adventures, West of Mauritius',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageCatamaran = [
    TouristPlace(
      image: 'assets/catamaran.jpg',
      name: 'Full-Day Catamaran Cruise to Ile aux Cerfs with BBQ Lunch',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/catamaran1.jpg',
      name: 'Ilot Gabriel Catamaran Cruise',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/catamaran3.jpg',
      name: 'Private Guided Tour of Northern Mauritius with Shopping in Port Louis',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/catamaran4.jpg',
      name: 'Catamaran Cruise to Ile Aux Benitiers: Dolphin watch, Crystal Rock & Transfer',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/catamaran5.jpg',
      name: 'Ile aux Airettes Nature Reserve, Blue Bay Beach, La Vanille Park & Gris Gris',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageQuad = [
    TouristPlace(
      image: 'assets/quad1.jpg',
      name: 'Tailor Made Day Package - La Vallee Des Couleurs',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/quad2.jpg',
      name: '4x4 Safari Tours at La Vallee de Ferney - Nature Expedition',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/quad3.jpg',
      name: 'Discovery Trail by Safari 4x4 - Bel Ombre Nature Reserve',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/quad4.jpg',
      name: '2hr Guided Quad Bike Tour in the East - A Trip Through History',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/quad5.jpg',
      name: 'Nature Adventure Package (Quad Biking, Zip Line)',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageHiking = [
    TouristPlace(
      image: 'assets/hiking1.jpg',
      name: 'Hiking Le Morne Brabant',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/hiking2.jpg',
      name: 'Hiking Sept Cascades (Tamarind Falls)',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/hiking3.jpg',
      name: 'Hiking Le Pouce Mountain - 3rd Highest Mountain',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/hiking4.jpg',
      name: 'Hiking in the Black River Gorges National Parc - Native Forest',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/hiking5.jpg',
      name: 'Hiking - Ebony Forest Reserve Chamarel: Love Tree Tour',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageHistorical = [
    TouristPlace(
      image: 'assets/historical1.jpg',
      name: 'Port-Louis Street Food Tour & China Town',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/historical2.jpg',
      name: 'Botanical Garden, Sugar Museum, Rum Tasting',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/historical3.jpg',
      name: 'Route of Indian Spirituality',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/historical4.jpg',
      name: 'Tea & Sugarcane Plantation Colonial Tour',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/historical5.jpg',
      name: 'Cultures & Traditions Tour',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageCasino = [
    TouristPlace(
      image: 'assets/casino1.jpg',
      name: 'Casino Senator Grand Baie',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/casino2.jpg',
      name: 'Ti Vegas',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/casino3.jpg',
      name: 'Casino Senator Port Louis',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
  ];
  final List<TouristPlace> TouristDetailsPageWaterfall = [
    TouristPlace(
      image: 'assets/cascade.jpg',
      name: 'Les 7 Cascades',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/cascade1.jpg',
      name: 'Chamarel Waterfalls',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/cascade2.jpg',
      name: 'Rochester Falls',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/cascade3.jpg',
      name: 'Alexandra Falls',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
    TouristPlace(
      image: 'assets/cascade4.jpg',
      name: 'Cascade De 500 Pieds',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: '' ,
      location: '',
      rating: '4.5',

    ),
  ];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                          places: TouristDetailsPageDolpins
                        ),
                      ),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageNature
                        ),
                      ),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageCatamaran
                        ),
                      ),
                    );
                  } else if (index == 3){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TouristDetailsPage(
                              places: TouristDetailsPageQuad
                          ),
                      ),
                    );
                  }else if (index == 4){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageHiking
                        ),
                      ),
                    );
                  }else if (index == 5){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageHistorical
                        ),
                      ),
                    );
                  }else if (index == 6){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageCasino
                        ),
                      ),
                    );
                  }else if (index == 7){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageWaterfall
                        ),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recommendedPlaces[index].image,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Text(
                            recommendedPlaces[index].text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
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
        itemCount: recommendedPlaces.length,
      ),
    );
  }
}
