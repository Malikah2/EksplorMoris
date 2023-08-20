class NearbyPlaceModel {
  final String image;
  final String name;
  final String distance;
  final String duration;
  final String rating;
  final String description;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;


  NearbyPlaceModel({
    required this.image,
    required this.name,
    required this.distance,
    required this.duration,
    required this.rating,
    required this.description,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,

  });
}
  List<NearbyPlaceModel> nearbyPlaces = [
    NearbyPlaceModel(image: "assets/lemorne.jpg", name: 'Le Morne Brabant', distance: '16.0 Km', duration: '', rating: '', description: '', image1: '', image2: '', image3: '', image4: '', image5: '', ),
    NearbyPlaceModel(image: "assets/chamarel.jpg", name: 'Chamarel Waterfall', distance: '16.6 Km', duration: '', rating: '',description: '',image1: '', image2: '', image3: '', image4: '', image5: '',),
    NearbyPlaceModel(image: "assets/coloured.jpg", name: 'Chamarel 7 Coloured earth', distance: '18.0 Km', duration: '', rating: '',description: '',image1: '', image2: '', image3: '', image4: '', image5: '',),
    NearbyPlaceModel(image: "assets/ileBenitier.jpg", name: 'Benitiers Island & Crystal Rock', distance: '16.8 Km', duration: '', rating: '',description: '',image1: '', image2: '', image3: '', image4: '', image5: '',),
    NearbyPlaceModel(image: "assets/grisgris.jpg", name: 'Gris Gris Beach', distance: '15.7 Km', duration: '', rating: '',description: '',image1: '', image2: '', image3: '', image4: '', image5: '',),
    NearbyPlaceModel(image: "assets/rhumerie.jpg", name: 'Rhumerie De Chamarel', distance: '17.7 Km', duration: '', rating: '',description: '',image1: '', image2: '', image3: '', image4: '', image5: '',),
    NearbyPlaceModel(image: "assets/lavanille.jpg", name: 'La Vanille Crocodile Park', distance: '23.2 Km', duration: '', rating: '',description: '',image1: '', image2: '', image3: '', image4: '', image5: '',),
  ];
