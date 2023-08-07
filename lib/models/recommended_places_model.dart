class RecommendedPlaceModel{
  final String image;
  final double rating;
  final String location;
  RecommendedPlaceModel({
    required this.image,
    required this.location,
    required this.rating,
});
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(image: "assets/places/place5.jpg",
      location: "St. Regis Bora Bora",
      rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/places/place4.jpg",
    location: "St. Regis Bora Bora",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/places/place3.jpg",
    location: "St. Regis Bora Bora",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/places/place2.jpg",
    location: "St. Regis Bora Bora",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/places/place1.jpg",
    location: "St. Regis Bora Bora",
    rating: 4.4,
  ),
];