import 'package:example/pages/tourist_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/pages/individual_location.dart';

import 'favorites.dart';

Favorites favorites = Favorites();

class roundDetailsPage extends StatefulWidget {
  final List<TouristPlace> placeList;

  roundDetailsPage({Key? key, required this.placeList}) : super(key: key);

  @override
  State<roundDetailsPage> createState() => _roundDetailsPageState();
}

class _roundDetailsPageState extends State<roundDetailsPage> {
  final List<TouristPlace> favoritesPlaces = [];
  late IconData currentIcon = Icons.favorite_border;
  bool saved = false;
  FlutterTts flutterTts = FlutterTts();
  Future<void> speakText(String text) async{
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(5.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final place = widget.placeList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IndividualLocationPage(
                            roundplace: place,
                            // Pass the selected place to the details page
                          ),
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
                                  top: 10,
                                  right: 10,
                                  child: IconButton(
                                    onPressed: () {
                                      String message =
                                          favorites.toggleFavorites(place);
                                      String showMessage = message == 'added'
                                          ? '${place.name} removed from favorites'
                                          : '${place.name} added to favorites';

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
                          onTap: (){
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
                childCount: widget.placeList.length,
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
