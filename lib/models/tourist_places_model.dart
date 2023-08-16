import 'package:example/models/tourist_places_model.dart' as tp;


class TouristPlace{
  final String name;
  final String image;
  final String description;

  TouristPlace({
    required this.name,
    required this.image,
    required this.description,
  });
}

List<TouristPlace> touristPlaces = [
  TouristPlace(name: "Beaches", image: "assets/icons/beach1.webp", description: ''),
  TouristPlace(name: "Foods", image: "assets/icons/food1.jpg", description: ''),
  TouristPlace(name: "Islands", image: "assets/icons/island.jpg", description: ''),
  TouristPlace(name: "Malls", image: "assets/icons/mall.jpg", description: ''),
  TouristPlace(name: "Hotels", image: "assets/icons/hotel.jpg", description: ''),
];