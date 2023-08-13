class NearbyPlaceModel {
  final String image;
  final String name;
  final String distance;


  NearbyPlaceModel({
    required this.image,
    required this.name,
    required this.distance
  });
}
  List<NearbyPlaceModel> nearbyPlaces = [
    NearbyPlaceModel(image: "assets/lemorne.jpg", name: 'Le Morne Brabant', distance: '16.0 Km'),
    NearbyPlaceModel(image: "assets/chamarel.jpg", name: 'Chamarel Waterfall', distance: '16.6 Km'),
    NearbyPlaceModel(image: "assets/coloured.jpg", name: 'Chamarel 7 Coloured earth', distance: '18.0 Km'),
    NearbyPlaceModel(image: "assets/ileBenitier.jpg", name: 'Benitiers Island & Crystal Rock', distance: '16.8 Km'),
    NearbyPlaceModel(image: "assets/grisgris.jpg", name: 'Gris Gris Beach', distance: '15.7 Km'),
    NearbyPlaceModel(image: "assets/rhumerie.jpg", name: 'Rhumerie De Chamarel', distance: '17.7 Km'),
    NearbyPlaceModel(image: "assets/lavanille.jpg", name: 'La Vanille Crocodile Park', distance: '23.2 Km'),
  ];
