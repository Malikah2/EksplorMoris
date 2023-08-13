class NearbyPlaceModel {
  final String image;
  final String name;
  final String description;

  NearbyPlaceModel({
    required this.image,
    required this.description,
    required this.name,
  });
}
  List<NearbyPlaceModel> nearbyPlaces = [
    NearbyPlaceModel(image: "assets/places/place7.jpg", description: '', name: ''),
    NearbyPlaceModel(image: "assets/places/place6.jpg", description: '', name: ''),
    NearbyPlaceModel(image: "assets/places/place5.jpg", description: '', name: ''),
    NearbyPlaceModel(image: "assets/places/place4.jpg", description: '', name: ''),
    NearbyPlaceModel(image: "assets/places/place3.jpg", description: '', name: ''),
    NearbyPlaceModel(image: "assets/places/place2.jpg", description: '', name: ''),
    NearbyPlaceModel(image: "assets/places/place1.jpg", description: '', name: ''),
  ];
