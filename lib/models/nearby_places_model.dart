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
  NearbyPlaceModel(
    image: "assets/lemorne.jpg",
    name: 'Le Morne Brabant',
    distance: '16.0 Km',
    duration: '-',
    rating: '4.4',
    description: 'Le Morne Brabant is a mountain of the south-west of Mauritius, on the peninsula of le Morne. Our team has been the first ever guides in 2004 to bring guests from all over the planet on this majestic rock. Declared World Heritage by UNESCO since July 6, 2008, the site is a sanctuary of the runaway slaves who would have committed suicide by jumping off the cliff of the mountain. Le Morne Brabant is one of the most preserved and wildest mountains of the island. It is habitat to a very large variety of endemic and narrow-endemic species, such as the rare Trochetia Boutoniana, which is our floral emblem. Some steeper parts of the ascent will require the use of our hands to progress safely towards the top, where we’ll discover the breath-taking views on the west and south-west lagoons and part of of the island !',
    image1: 'assets/hiking/hiking1.jpg',
    image2: 'assets/hiking/hiking2.jpg',
    image3: 'assets/hiking/hiking3.jpg',
    image4: 'assets/hiking/hiking4.jpg',
    image5: 'assets/hiking/hiking5.jpg',
  ),

  NearbyPlaceModel(
    image: "assets/chamarel.jpg",
    name: 'Chamarel Waterfall',
    distance: '16.6 Km',
    duration: '-',
    rating: '4.4',
    description: 'Undoubtedly the tallest single-drop waterfall in Mauritius at about 100m high, the Chamarel Waterfall is a striking piece of nature standing amid dense vegetation. Fed by the waters of three distinct streams pouring into Saint Denis River, it has a powerful rush with a peak flow rate in excess of 40,000 m³ per minute. Overhanging the ledge of a basalt cliff, the Chamarel Waterfall splashes into an oval pool before flowing down a 6km tropical-forest-fringed canyon to Baie du Cap. The sight not only floods the senses with freshness but it is also a spectacular showcase of millions of years of volcanic activity. The dramatic landscape if formed by lavas of two different ages. The layer of brecciated basalt near the base dates from between 10 to 8 million years ago, on top of which lies a second layer from the intermediate period between 3.5 and 1.7 million years ago.No wonder why the Chamarel Waterfall is ranked among the most sought-after sightseeing spots in Mauritius!',
    image1: 'assets/waterfalls/waterfall6.jpg',
    image2: 'assets/waterfalls/waterfall7.jpg',
    image3: 'assets/waterfalls/waterfall8.jpg',
    image4: 'assets/waterfalls/waterfall9.jpg',
    image5: 'assets/waterfalls/waterfall10.jpg',
  ),

  NearbyPlaceModel(
    image: "assets/coloured.jpg",
    name: 'Chamarel 7 Coloured earth',
    distance: '18.0 Km',
    duration: '-',
    rating: '4.2',
    description: 'Nature has its own way of piquing our curiosity, and Chamarel’s Seven Coloured Earth has something surreal to offer that will tickle your imagination. Revealing 600 million years of history, the first and main geopark of the island is a true spectacle of nature! One of the most iconic attractions in Mauritius, the Land of 7 Colours at Chamarel offers a unique experience not only for geology and nature lovers, but also for those who want to better understand this rare geological phenomenon. You will be impressed by the shades of colour and the harmony that characterises this place.',
    image1: 'assets/chamarel1.jpg',
    image2: 'assets/chamarel2.jpg',
    image3: 'assets/chamarel3.jpg',
    image4: 'assets/chamarel4.jpg',
    image5: 'assets/chamarel5.jpg',
  ),

  NearbyPlaceModel(
    image: "assets/ileBenitier.jpg",
    name: 'Benitiers Island & Crystal Rock',
    distance: '16.8 Km',
    duration: '-',
    rating: '4.6',
    description: 'Animal lovers will relish this full-day catamaran cruise that features dolphin\'s swimming on Mauritius\' west coast. Cruise to the island of Ile Aux Benitiers to anchor and snorkel in the crystal clear water or relax on the stunning beaches. Enjoy a barbecue lunch aboard the boat, including an unlimited selection of alcoholic and non-alcoholic beverages. This is a special opportunity to combine leisure and adventure in a gorgeous landscape.',
    image1: 'assets/catamaran/catamaran16.jpg',
    image2: 'assets/catamaran/catamaran17.jpg',
    image3: 'assets/catamaran/catamaran18.jpg',
    image4: 'assets/catamaran/catamaran19.jpg',
    image5: 'assets/catamaran/catamaran20.jpg',

  ),

  NearbyPlaceModel(
    image: "assets/grisgris.jpg",
    name: 'Gris Gris Beach',
    distance: '15.7 Km',
    duration: '-',
    rating: '4',
    description: 'Gris Gris is the beach which is located in the extreme south of the island. This little piece of beach does not have coral reef, the big waves come breaking on the shore offering an amazing views to the visitors. Gris Gris offers a contrast with the other beaches in theSouth popular for their calm sea.',
    image1: 'assets/grisgris1.jpg',
    image2: 'assets/grisgris2.jpg',
    image3: 'assets/grisgris3.jpg',
    image4: 'assets/grisgris4.jpg',
    image5: 'assets/grisgris5.jpg',
  ),

  NearbyPlaceModel(
    image: "assets/rhumerie.jpg",
    name: 'Rhumerie De Chamarel',
    distance: '17.7 Km',
    duration: '-',
    rating: '4.8',
    description: 'La distillerie de Chamarel a une riche histoire, profondément enracinée dans la tradition mauricienne de production de rhum. La distillerie de Chamarel est l\'une des plus récentes de l\'île Maurice. En 1996, la famille Couacaud a acheté le Domaine de l\'Exil à Chamarel, où la canne à sucre est l\'activité principale, cultivée sur 220 hectares. Après plusieurs années de réflexion, la famille a décidé en 2008 de construire la distillerie à partir de zéro dans le seul but de produire du rhum pur de jus de canne à sucre, exclusivement à partir des plantations de l\'exploitation. Bientôt, la prochaine génération a rejoint l\'équipe et aujourd\'hui, les deux frères aînés sont à la tête de l\'entreprise. C\'est ainsi qu\'est née une grande passion pour le rhum à la distillerie de Chamarel.',
    image1: 'assets/rhum1.png',
    image2: 'assets/rhum2.png',
    image3: 'assets/rhum3.png',
    image4: 'assets/rhum4.jpg',
    image5: 'assets/rhum5.png',
  ),

  NearbyPlaceModel(
    image: "assets/lavanille.jpg",
    name: 'La Vanille Crocodile Park',
    distance: '23.2 Km',
    duration: '-',
    rating: '4.9',
    description: 'La Vanille Nature Park previously known as  La Vanille Crocodile Park was created in 1985, and its name honors the old vine cultivated in the valley where the reserve of 5 hectares is located. Mauritian hospitality, conservation of nature, and welfare of the animals are privileged in this magical setting, where our guides will take you on an unforgettable visit of the reserve.',
    image1: 'assets/crocodile1.jpg',
    image2: 'assets/crocodile2.jpg',
    image3: 'assets/crocodile3.jpg',
    image4: 'assets/crocodile4.jpg',
    image5: 'assets/crocodile5.jpg',
  ),
];
