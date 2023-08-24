import 'package:example/pages/favorites.dart';
import 'package:example/pages/tourist_details_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import '../models/nearby_places_model.dart';
import 'hotline/hotlines.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

Favorites favorites = Favorites();

class _FavoritesPageState extends State<FavoritesPage> {
  List<TouristPlace> favoritesPlaces = favorites.getFavorites();
  bool isExpanded = false;

  Future<void> _refreshFavorites() async {
    // You can perform any asynchronous tasks here, such as fetching updated data
    // For demonstration purposes, I'm just using a delay to simulate loading
    print("Refreshing favorites...");
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      favoritesPlaces = favorites.getFavorites();
    });
    print("Favorites refreshed!");
  }

  //const FavoritesPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show a dialog to confirm leaving the app
        bool? shouldLeave = await showExitConfirmationDialog(context);
        return shouldLeave ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Favorite Places'),
        ),
        body: RefreshIndicator(
          onRefresh: _refreshFavorites,
          child: ListView.builder(
            itemCount: favoritesPlaces.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(favoritesPlaces[index].image),
                title: Text(favoritesPlaces[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isExpanded
                          ? favoritesPlaces[index].description
                          : favoritesPlaces[index].description.substring(0, 50),
                    ),
                    if (favoritesPlaces[index].description.length > 50)
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? 'Read Less' : 'Read More',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: () {
                    _removeFavoriteItem(index);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _removeFavoriteItem(int index) {
    setState(() {
      favorites.removeFavorite(favoritesPlaces[index]);
      favoritesPlaces = favorites.getFavorites();
    });
  }

  Future<bool?> showExitConfirmationDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Text('Do you really want to exit the app?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true); //Allow exit
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false); //stay in app
              },
            ),
          ],
        );
      },
    );
  }
}
