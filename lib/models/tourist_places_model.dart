class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Beaches", image: "assets/icons/beach1.webp"),
  TouristPlacesModel(name: "Foods", image: "assets/icons/food1.jpg"),
  TouristPlacesModel(name: "Islands", image: "assets/icons/island.jpg"),
  TouristPlacesModel(name: "Malls", image: "assets/icons/mall.jpg"),
  TouristPlacesModel(name: "Hotels", image: "assets/icons/hotel.jpg"),
];