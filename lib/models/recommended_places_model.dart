class RecommendedPlaceModel{
  final String image;
  final double rating;
  final String text;
  RecommendedPlaceModel({
    required this.image,
    required this.text,
    required this.rating,
});
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(image: "assets/dolphins.jpg",
      text: "Swim with Dolphins",
      rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/nature.jpg",
    text: "Nature and Wildlife Tours",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/fullday.jpg",
    text: "Full-day Tours & Catamaran",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/quad.jpg",
    text: "Quad Trip",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/hiking.jpg",
    text: "Hiking Tours",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/historical.jpg",
    text: "Historical Tours",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/casino.jpg",
    text: "Casinos",
    rating: 4.4,
  ),
  RecommendedPlaceModel(image: "assets/waterfall.jpg",
    text: "Waterfalls",
    rating: 4.4,
  ),
];