import 'package:example/pages/tourist_details_page.dart';
final List<TouristPlace> favoritesPlaces = [];

class Favorites{

  String toggleFavorites(TouristPlace place){
    if (favoritesPlaces.contains(place)) {
      favoritesPlaces.remove(place);
      return "removed";
    } else {
      favoritesPlaces.add(place);
      display();
      return "added";
    }
  }
  List<TouristPlace> getFavorites(){
    return favoritesPlaces;
  }

  void removeFavorite(TouristPlace place){
    favoritesPlaces.remove(place);
  }

  bool isFavorite(TouristPlace place){
    if (favoritesPlaces.contains(place)){
      return true;
    }
    else{
      return false;
    }
  }


  void display(){
    for(TouristPlace place in favoritesPlaces){
      print(place.name);
    }
  }

  void removeFavoriteItem(TouristPlace place){
    favoritesPlaces.remove(place);
    }

}