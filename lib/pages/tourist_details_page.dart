//version 4
import 'package:example/pages/individual_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ionicons/ionicons.dart';
import 'favorites.dart';

class TouristPlace {
  final String id;
  final String image;
  final String name;
  final String subtitle;
  final String description;
  final String price;
  final String location;
  final String rating;
  final String duration;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;
  final String distance;

  TouristPlace({
    required this.id,
    required this.image,
    required this.name,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.location,
    required this.rating,
    required this.duration,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.distance,
  });
}

Favorites favorites = Favorites();

class TouristDetailsPage extends StatefulWidget {
  final List<TouristPlace> places;

  TouristDetailsPage({Key? key, required this.places}) : super(key: key);

  @override
  State<TouristDetailsPage> createState() => _TouristDetailsPageState();
}

class _TouristDetailsPageState extends State<TouristDetailsPage> {
  final List<TouristPlace> favoritesPlaces = [];
  late IconData currentIcon = Icons.favorite_border;
  bool saved = false;
  FlutterTts flutterTts = FlutterTts();

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // ... Existing Scaffold setup ...

      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(5.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final place = widget.places[index];
                  return GestureDetector(
                    // Wrap with GestureDetector
                    onTap: () {
                      // Handle tap action here
                      // For example, you can navigate to a details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              IndividualLocationPage(roundplace: place),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          height: size.height * 0.30,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    place.image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned(
                                  top: 10, // Adjust the position as needed
                                  right: 10, // Adjust the position as needed
                                  child: IconButton(
                                    onPressed: () {
                                      String message =
                                          favorites.toggleFavorites(place);
                                      String showMessage = message == 'added'
                                          ? '${place.name} added to favorites'
                                          : '${place.name} removed from favorites';

                                      final scaffoldMessenger =
                                          ScaffoldMessenger.of(context);
                                      scaffoldMessenger.showSnackBar(
                                        SnackBar(
                                          content: Text(showMessage),
                                          duration: Duration(seconds: 1),
                                        ),
                                      );
                                      setState(() {
                                        saved = !saved;
                                        currentIcon = saved
                                            ? Icons.favorite
                                            : Icons.favorite_border;
                                      });
                                      speakText(showMessage);
                                    },
                                    icon: Icon(
                                      currentIcon = favorites.isFavorite(place)
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: favorites.isFavorite(place)
                                          ? Colors.red
                                          : Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text(
                                          place.rating,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            speakText(place.name);
                          },
                          child: Text(
                            place.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  );
                },
                childCount: widget.places.length,
              ),
            ),
          ),
        ],
      ),

      // ... Existing FloatingActionButton setup ...
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 2.0, left: 2.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Ionicons.chevron_back),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
