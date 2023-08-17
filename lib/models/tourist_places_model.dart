import 'package:example/models/tourist_places_model.dart' as tp;


class RoundTouristPlace{
  final String name;
  final String image;
  final String description;

  RoundTouristPlace({
    required this.name,
    required this.image,
    required this.description,
  });
}

List<RoundTouristPlace> touristPlaces = [
  RoundTouristPlace(name: "Beaches", image: "assets/icons/beach1.webp", description: ''),
  RoundTouristPlace(name: "Foods", image: "assets/icons/food1.jpg", description: ''),
  RoundTouristPlace(name: "Islands", image: "assets/icons/island.jpg", description: ''),
  RoundTouristPlace(name: "Malls", image: "assets/icons/mall.jpg", description: ''),
  RoundTouristPlace(name: "Hotels", image: "assets/icons/hotel.jpg", description: ''),
];