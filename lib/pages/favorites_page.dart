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

  Future<void> _refreshFavorites() async {
    // You can perform any asynchronous tasks here, such as fetching updated data
    // For demonstration purposes, I'm just using a delay to simulate loading
    print ("Refreshing favorites...");
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      favoritesPlaces = Favorites().getFavorites();
    });
    print("Favorites refreshed!");
  }
  //const FavoritesPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    print("Building FavoritesPage...");
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Places'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshFavorites,
        child: ListView.builder(
          itemCount: favoritesPlaces.length,
          itemBuilder: (context, index) {
            print("Building item at index $index");
            print("favoritesPlaces length: ${favoritesPlaces.length}");
            return ListTile(
              leading: Image.asset(favoritesPlaces[index].image),
              title: Text(favoritesPlaces[index].name),
              subtitle: Text(favoritesPlaces[index].description),
            );
          },
        ),
      ),
    );
  }
}
