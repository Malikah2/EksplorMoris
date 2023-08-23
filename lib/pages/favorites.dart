import 'package:example/pages/tourist_details_page.dart';

class Favorites{
  List<TouristPlace> favoritesPlaces = [];

  String toggleFavorites(TouristPlace place){
    if (favoritesPlaces.contains(place)) {
      favoritesPlaces.remove(place);
      return "removed";
    } else {
      favoritesPlaces.add(place);
      return "added";
    }
  }
  List<TouristPlace> getFavorites(){
    return favoritesPlaces;
  }

}