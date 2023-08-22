import 'package:example/pages/tourist_details_page.dart';
import 'package:flutter/material.dart';
import 'package:example/models/recommended_places_model.dart';

class RecommendedPlaces extends StatelessWidget {
  RecommendedPlaces({Key? key}) : super(key: key);
  final List<TouristPlace> TouristDetailsPageDolpins = [
    TouristPlace(
      image: 'assets/dolphin1.jpg',
      name: 'Dolphin trip/Private boat tour le morne/Crystal rock LydiaBoat',
      subtitle: 'About',
      description: 'For a magical and unforgettable day, join this unique private boat tour. Your day will begin early in the morning when you are picked up by a private speed boat and transported in style to the magnificent location of Benitier Island. This tour starts early to be the first to see the dolphins and observe them peacefully in their natural habitat while swimming nearby, followed by snorkelling next to the the aquarium and the famous crystal rock. Later in the day, a degustation lunch is served, followed by a tasty seafood barbeque accompanied by drinks.' ,
      price: 'Rs 600' ,
      location: '',
      rating: '4.5',
      duration: '7 hours',
      image1: 'assets/dolphin/image1.jpg',
      image2: 'assets/dolphin/image2.jpg',
      image3: 'assets/dolphin/image3.jpg',
      image4: 'assets/dolphin/image4.jpg',
      image5: 'assets/dolphin/image5.jpg',
    ),
    TouristPlace(
      image: 'assets/dolphin4.jpg',
      name: 'Full-Day Mauritius Volcanic Wonders Tour Including Swimming with Wild Dolphins',
      subtitle: 'As From Rs500 per adult',
      description: 'During your time in Mauritius, take part in one of the island’s most popular activities on this guided all-day excursion, First, head to Tamarin Bay to swim with dolphins in their natural environment, and spot beautiful coral and tropical fish while snorkeling. Then travel to the top of the Trou aux Cerf volcano to take in stunning views and visit the sacred Grand Bassin crater lake. Plus, visit the geographic wonder of Chamarel and its seven-colored dunes.' ,
      price: 'Rs 450' ,
      location: '',
      rating: '4',
      duration: 'Full Day',
      image1: 'assets/dolphin/image6.jpg',
      image2: 'assets/dolphin/image7.jpg',
      image3: 'assets/dolphin/image8.jpg',
      image4: 'assets/dolphin/image9.jpg',
      image5: 'assets/dolphin/image10.jpg',

    ),
    TouristPlace(
      image: 'assets/dolphin3.jpg',
      name: 'Swimming with Wild Dolphins and Whale Watching (Private Transportation Optional)',
      subtitle: 'As From Rs500 per adult',
      description: 'Learn about the diverse marine life in the waters near Mauritius during this roughly 6-hour trip which includes snorkeling, whale-watching, and swimming with wild dolphins. Head to Tamarin Bay by speedboat for a chance to swim around untamed dolphins that call these waters home. After stopping by a popular snorkeling site called "The Aquarium," thanks to its colorful collection of fish, spend your afternoon spotting humpback and sperm whales off the Mauritian coast. This unforgettable marine adventure also includes a guide, snorkel gear, and lunch.' ,
      price: 'Rs 700' ,
      location: '',
      rating: '5',
      duration: '2 hours',
      image1: 'assets/dolphin/image11.jpg',
      image2: 'assets/dolphin/image12.jpg',
      image3: 'assets/dolphin/image13.jpg',
      image4: 'assets/dolphin/image14.jpg',
      image5: 'assets/dolphin/image15.jpg',

    ),
    TouristPlace(
      image: 'assets/dolphin5.jpg',
      name: 'Le Havanah Boat/sunrise watching & swimming Dolpins/Lunch on Benitier Island',
      subtitle: 'As From Rs500 per adult',
      description: 'The Havanah Boat offers you to live a unique and privileged nautical excursion. Immerse yourself in the world of these magnificent creatures as we take you on a thrilling dolphin watching experience. Cruise along the crystal-clear waters of Mauritius, guided by our experienced crew who will ensure a respectful and responsible encounter with the dolphins. Witness their playful antics and graceful movements, as you marvel at their captivating presence in their natural habitat. Benitier Island:After your exhilarating dolphin encounter, we\'ll whisk you away to the breathtaking Benitier Island. This pristine, secluded paradise offers a perfect setting for relaxation and exploration. With its white sandy beaches, turquoise lagoons, Benitier Island is a true tropical haven. Take a leisurely stroll along the shoreline, bask in the sun, or simply unwind in the tranquil surroundings. Our team embark on an extraordinary journey in Mauritius!' ,
      price: 'Rs 550' ,
      location: 'Rs 500',
      rating: '4.5',
      duration: '4-5 hours',
      image1: 'assets/dolphin/image16.jpg',
      image2: 'assets/dolphin/image17.jpg',
      image3: 'assets/dolphin/image18.jpg',
      image4: 'assets/dolphin/image19.jpg',
      image5: 'assets/dolphin/image20.jpg',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageNature = [
    TouristPlace(
      image: 'assets/nature1.jpg',
      name: 'South-West of Mauritius Private Full-Day  Scenic Tour',
      subtitle: 'As From Rs500 per adult',
      description: 'You will explore the southwest of Mauritius on this 7-8 hours scenic tour. With your guide, you will visit Lush Green Dormant Volcano named Trou Aux Cerfs which is a highly popular attraction. Next, you will stop at Mare Aux Vacoas reservoir. Then, continue to Grand Bassin, where you will visit the Hindu temple. Afterward, continue to Alexandra falls, the surroundings of the waterfalls depict a real jungle book. Next, you\'ll visit the Gorge viewpoint which provides stunning views of this ancient primeval forest. Afterward, you will enjoy a traditional Mauritian 3-course lunch. Then you\'ll head to visit the seven-colored earth which is unique because of its multi-colored sand. Next, head to the Chamarel waterfall which is undoubtedly the tallest single-drop waterfall. Later on, you\'ll be heading to see the chamarel viewpoint. Finally, heading to Maconde viewpoint, you will feel like in the middle of the ocean. ' ,
      price: 'Rs 400' ,
      location: '',
      rating: '4.2',
      duration: 'Half-Day',
      image1: 'assets/Nature/nature1.jpg',
      image2: 'assets/Nature/nature2.jpg',
      image3: 'assets/Nature/nature3.jpg',
      image4: 'assets/Nature/nature4.jpg',
      image5: 'assets/Nature/nature5.jpg',

    ),
    TouristPlace(
      image: 'assets/nature2.jpg',
      name: 'Enchanting South of Mauritius: Full-day tour  Incl CASELA Park, Lunch & Transfer',
      subtitle: 'As From Rs500 per adult',
      description: 'This magical full day tour of south-west Mauritius will see you experiencing gorgeous ocean views, waterfalls, architectural wonders and native wildlife, all accompanied by a knowledgeable licensed guide. Highlights of the tour include Rochester Fall, famous for its stunning rock formations and waterfall, as well as the enormous waves and cliff landscape Gris-Gris. We will also visit the Grand Bassin crater lake with its giant Lord Shiva statute, as well as visits to the beautiful Alexandra Falls, Chamarel and Maconde viewpoints. Adrenaline junkies and wildlife lovers will get their fix with the Tulawaka mountain coaster and a delightful African truck safari excursion: expect to see animals such as zebras, ostriches, rhinos, birds and impalas. A delicious three course Mauritian lunch is included in the trip, as are private transportation and entry fees.' ,
      price: 'Rs 550' ,
      location: '',
      rating: '4.1',
      duration: 'Full Day',
      image1: 'assets/Nature/nature6.jpg',
      image2: 'assets/Nature/nature7.jpg',
      image3: 'assets/Nature/nature8.jpg',
      image4: 'assets/Nature/nature9.jpg',
      image5: 'assets/Nature/nature10.jpg',

    ),
    TouristPlace(
      image: 'assets/nature3.jpg',
      name: 'Snorkelling with Giant Turtles, The Red Church, Pamplemousses Garden & Port Louis',
      subtitle: 'As From Rs500 per adult',
      description: 'Experience the natural beauty and historical sights of Mauritius when you book this full-day sightseeing excursion. Begin your day with a boat trip to an area known to be abundant with marine life for your chance to see these massive sea turtles as well as other animals. Then, join your private guide for a tour that includes a visit to the Red Church, Pamplemousse Gardens, and Port Louis.' ,
      price: 'Rs 550' ,
      location: '',
      rating: '4.8',
      duration: '3 hours',
      image1: 'assets/Nature/nature11.jpg',
      image2: 'assets/Nature/nature12.jpg',
      image3: 'assets/Nature/nature13.jpg',
      image4: 'assets/Nature/nature14.jpg',
      image5: 'assets/Nature/nature15.jpg',

    ),
    TouristPlace(
      image: 'assets/nature4.jpg',
      name: 'Casela World of Adventures, West of Mauritius',
      subtitle: 'As From Rs500 per adult',
      description: 'Avoid the frustration of waiting in ticket lines by prebooking your admission ticket to Casela World of Adventures nature park. With your entry guaranteed and all entrance fees taken care of ahead of time, you’re free to take your time to enjoy the many attractions and activities this outdoor amusement park offers, such as the zipline and camel rides. In the safari tour, get a chance to see Java mouse deer, Mauritian fruit bats, and other creatures.' ,
      price: 'Rs 600' ,
      location: '',
      rating: '5',
      duration: 'Full Day',
      image1: 'assets/Nature/nature16.jpg',
      image2: 'assets/Nature/nature17.jpg',
      image3: 'assets/Nature/nature18.jpg',
      image4: 'assets/Nature/nature19.jpg',
      image5: 'assets/Nature/nature20.jpg',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageCatamaran = [
    TouristPlace(
      image: 'assets/catamaran.jpg',
      name: 'Full-Day Catamaran Cruise to Ile aux Cerfs with BBQ Lunch',
      subtitle: 'As From Rs500 per adult',
      description: 'Soak in the beauty of Mauritius’ waters on a full-day Isle aux Cerfs catamaran cruise. Board an Island Hopper catamaran at Preskil Beach Resort, and admire the scenery as you sail to a snorkeling spot. Swim, snorkel or sunbathe; and then cruise to the Grand River South East (GRSE) waterfalls. Watch for wildlife here, enjoy a delicious onboard barbecue lunch, and relax on Isle aux Cerfs’ beaches before cruising back to Preskil to lilting Mauritian sega music. Look for dolphins, and enjoy unlimited beer, wine and sodas as you sail.' ,
      price: 'Rs 500' ,
      location: '',
      rating: '5',
      duration: 'Full Day',
      image1: 'assets/catamaran/catamaran1.jpg',
      image2: 'assets/catamaran/catamaran2.jpg',
      image3: 'assets/catamaran/catamaran3.jpg',
      image4: 'assets/catamaran/catamaran4.jpg',
      image5: 'assets/catamaran/catamaran5.jpg',

    ),
    TouristPlace(
      image: 'assets/catamaran1.jpg',
      name: 'Ilot Gabriel Catamaran Cruise',
      subtitle: 'As From Rs500 per adult',
      description: 'Explore Ilot Gabriel via a catamaran cruise on this 7-hour tour from Grand Baie. Make swimming and snorkeling spots along the way, then drop anchor to explore the island before eating a barbecue lunch and sipping drinks from an open bar.' ,
      price: 'Rs 450' ,
      location: '',
      rating: '4.9',
      duration: '8 hours',
      image1: 'assets/catamaran/catamaran6.jpg',
      image2: 'assets/catamaran/catamaran7.jpg',
      image3: 'assets/catamaran/catamaran8.jpg',
      image4: 'assets/catamaran/catamaran9.jpg',
      image5: 'assets/catamaran/catamaran10.jpg',

    ),
    TouristPlace(
      image: 'assets/catamaran3.jpg',
      name: 'Private Guided Tour of Northern Mauritius with Shopping in Port Louis',
      subtitle: 'As From Rs500 per adult',
      description: 'Get personalized attention and the opportunity to ask questions of your dedicated guide on this 8-hour private tour of Port Louis. Explore the capital of Mauritius, including landmarks such as the Sugar Estate and Museum, the Pamplemousses Botanical Garden, the Central Market of Port Louis and Citadel Hill. Pickup and drop-off at select Mauritius hotels included.' ,
      price: 'Rs 350' ,
      location: '',
      rating: '4',
      duration: '4-5 hours',
      image1: 'assets/catamaran/catamaran11.jpg',
      image2: 'assets/catamaran/catamaran12.jpg',
      image3: 'assets/catamaran/catamaran13.jpg',
      image4: 'assets/catamaran/catamaran14.jpg',
      image5: 'assets/catamaran/catamaran15.jpg',

    ),
    TouristPlace(
      image: 'assets/catamaran4.jpg',
      name: 'Catamaran Cruise to Ile Aux Benitiers: Dolphin watch, Crystal Rock & Transfer',
      subtitle: 'As From Rs500 per adult',
      description: 'Animal lovers will relish this full-day catamaran cruise that features dolphin\'s swimming on Mauritius\' west coast. Cruise to the island of Ile Aux Benitiers to anchor and snorkel in the crystal clear water or relax on the stunning beaches. Enjoy a barbecue lunch aboard the boat, including an unlimited selection of alcoholic and non-alcoholic beverages. This is a special opportunity to combine leisure and adventure in a gorgeous landscape.' ,
      price: 'Rs 500' ,
      location: '',
      rating: '4.6',
      duration: 'Full Day',
      image1: 'assets/catamaran/catamaran16.jpg',
      image2: 'assets/catamaran/catamaran17.jpg',
      image3: 'assets/catamaran/catamaran18.jpg',
      image4: 'assets/catamaran/catamaran19.jpg',
      image5: 'assets/catamaran/catamaran20.jpg',

    ),
    TouristPlace(
      image: 'assets/catamaran5.jpg',
      name: 'Ile aux Aigrettes Nature Reserve, Blue Bay Beach, La Vanille Park & Gris Gris',
      subtitle: 'As From Rs500 per adult',
      description: 'Instead of making separate plans for some of Mauritius\' top attractions, opt for a combo tour. Hike Ile aux Aigrettes nature reserve, the place to see giant tortoise; enjoy leisure time at Blue Bay\'s beach and lagoon. You can also visit the National History Museum (Naval Museum).' ,
      price: 'Rs 750' ,
      location: '',
      rating: '4.5',
      duration: 'Full Day',
      image1: 'assets/catamaran/catamaran21.jpg',
      image2: 'assets/catamaran/catamaran22.jpg',
      image3: 'assets/catamaran/catamaran23.jpg',
      image4: 'assets/catamaran/catamaran24.jpg',
      image5: 'assets/catamaran/catamaran25.jpg',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageQuad = [
    TouristPlace(
      image: 'assets/quad1.jpg',
      name: 'Tailor Made Day Package - La Vallee Des Couleurs',
      subtitle: 'As From Rs500 per adult',
      description: 'Embrace the freedom to create your own La Vallée des Couleurs adventure just the way you want it! With our customizable day package, the power is in your hands to design an experience that perfectly suits your preferences and desires.' ,
      price: 'Rs 500' ,
      location: '',
      rating: '4.5',
      duration: '2 hours',
      image1: 'assets/quad/quad1.jpg',
      image2: 'assets/quad/quad2.jpg',
      image3: 'assets/quad/quad3.jpg',
      image4: 'assets/quad/quad4.jpg',
      image5: 'assets/quad/quad5.jpg',

    ),
    TouristPlace(
      image: 'assets/quad2.jpg',
      name: '4x4 Safari Tours at La Vallee de Ferney - Nature Expedition',
      subtitle: 'As From Rs500 per adult',
      description: 'Embark on the ultimate adventure seekers\' dream: an adrenaline-pumping 4x4 tour through the untamed wilderness of La Vallée de Ferney! Brace yourself for an electrifying journey where nature\'s secrets are unveiled at every turn, leaving you spellbound and thirsting for more. Roaring into action aboard a rugged 4x4 vehicle, you\'ll plunge deep into the heart of La Vallée de Ferney. You will be amazed as the wild reveals itself in all its glory. Majestic deer leap through the undergrowth, their graceful elegance commanding your attention. Stealthy wild boars roam freely, showcasing their untamed spirit. Even bats take flight, their aerial acrobatics leaving you speechless. However, this is merely the start of your adventure. As you traverse the demanding landscape, you\'ll be welcomed by towering indigenous trees, stretching towards the heavens. Within their protective embrace lies a concealed realm, a haven brimming with a myriad of resplendent plant life and captivating creatures. This extraordinary paradise transcends all expectations, where the symphony of nature resonates in perfect harmony. Yet, the excitement doesn\'t stop there. Your 4x4 adventure of either 1 or 2 hours will lead you to breathtaking viewpoints that redefine the meaning of awe-inspiring. Treat yourself to a visual feast, as the southeastern coast unveils its splendour before your very eyes. Azure waters merge seamlessly with sun-kissed sands, creating a panoramic masterpiece that ignites your senses. The sheer beauty of this coastal wonderland will leave you breathless, with every fibre of your being yearning to capture its essence forever. Are you ready to conquer La Vallée de Ferney on an epic level? Join this pulse-pounding expedition through nature\'s playground. Prepare to be swept away by untamed wildlife encounters, enchanted by indigenous arboreal marvels, and mesmerised by the majesty of coastal vistas. This is a once-in-a-lifetime journey that will forever ignite the explorer within you, revealing the unparalleled beauty of La Vallée de Ferney. Get ready to unleash your wild side!' ,
      location: '',
      rating: '4.8',
      duration: '2-3 hours',
      price: 'Rs 450',
      image1: 'assets/quad/quad6.jpg',
      image2: 'assets/quad/quad7.jpg',
      image3: 'assets/quad/quad8.jpg',
      image4: 'assets/quad/quad9.jpg',
      image5: 'assets/quad/quad10.jpg',

    ),
    TouristPlace(
      image: 'assets/quad3.jpg',
      name: 'Discovery Trail by Safari 4x4 - Bel Ombre Nature Reserve',
      subtitle: 'As From Rs500 per adult',
      description: 'This is a fantastic adventure trail, taking you off the beaten track to discover one of the most rejuvenating sites on the island. This 4x4 safari package has been designed to provide you with the most satisfying adventure in nature with the possibility to swim at a waterfall. As soon as you reach the welcome centre, you will be offered a welcome drink and briefed on the safari. You will then hop on your safari ride, so buckle up and get ready for an amazing time. In these two hours of comprehensive and intensive exploration at Bel Ombre Nature Reserve, sightseers are indulged in a rich diversity of sites and panoramas, including stops and a possibility of swimming at the L’Exemple waterfall.' ,
      price: 'Rs 450' ,
      location: '',
      rating: '4.9',
      duration: '2-3 hours',
      image1: 'assets/quad/quad11.jpg',
      image2: 'assets/quad/quad12.jpg',
      image3: 'assets/quad/quad13.jpg',
      image4: 'assets/quad/quad14.jpg',
      image5: 'assets/quad/quad15.jpg',

    ),
    TouristPlace(
      image: 'assets/quad4.jpg',
      name: '2hr Guided Quad Bike Tour in the East - A Trip Through History',
      subtitle: 'As From Rs500 per adult',
      description: 'Gear up and get ready to ride through fields on a Single or Double Quad bike, discovering plantations and ending at a historical landmark in the East. This package will enable you to discover the Eastern part of Mauritius, and gives you an overview of the history & culture of Mauritius - all while quad biking! Departing from Constance after briefing, the circuit continues through green cane fields, which is said to be represented by the green colour on our Mauritian Flag. After that, you’ll pass by mesmerising pineapple fields and orchard - the sweet scent of the tropical fruits will enthral you. The Quad Ride continues until you come across lush watercress plantation, which will totally refresh your senses. The breathtaking natural scenery, peaceful setting, crisp air and luxuriant greeneries surrounding the region, make it a wonderful site for you to visit while quad biking, but that’s not even the best part of this quad biking tour! More than just fields and vegetation, these depict the culture & history of Mauritius. Sugarcane was introduced to Mauritius during the Dutch period, but it was only in 1721 that the sugar industry truly escalated. For a long time, sugar export was one of the pillars of the local economy. To ride through the fields decades later, on your single or double quad, will be a remarkable experience. Along the way, the guide will give you interesting insights on the background history & cultural aspects of the sites. The ultimate stop will be at the Sugar Mill’s Factory Chimney, which again, dates back to the French rule period in Mauritius. Do make sure to take lots of pictures along the way; these places are unique to our island and cannot be found elsewhere in the world!' ,
      price: 'Rs 900' ,
      location: '',
      rating: '5',
      duration: '2 hours',
      image1: 'assets/quad/quad16.jpg',
      image2: 'assets/quad/quad17.jpg',
      image3: 'assets/quad/quad18.jpg',
      image4: 'assets/quad/quad19.jpg',
      image5: 'assets/quad/quad20.jpg',

    ),
    TouristPlace(
      image: 'assets/quad5.jpg',
      name: 'Nature Adventure Package (Quad Biking, Zip Line)',
      subtitle: 'As From Rs500 per adult',
      description: 'Spend a beautiful day amidst nature at La Vallée des Couleurs Nature Park. Visit the park by quad biking or on foot and be amazed by the lush scenic location of dense forest. This package will have you experience a thrilling quad bike ride and discover beautiful waterfalls or ponds. Take delight in a delicious lunch before flying over the valley on a zipline. The trip starts by adding some adrenaline to your exploration with a 2 hours Quad Bike activity on a 450cc quad. Setting off for a bit of quad biking, you will be driving through muddy banks, crossing rivers and heading uphill splashing up and down steep dirt trails. At La Vallée des Couleurs, there are numerous natural ponds and waterfalls to explore. The four famous waterfalls in the reserve are Cascades Vacoas, Bois de Natte, Cheveux d\'Ange and Chamouzé, where visitors can listen to water rustling, relax in natural intimacy and feel inner peace. After quad biking you would have some free time to discover these ponds – truly a must! You can relax under the waterfalls just before heading for lunch, which is served at one of the scenic restaurants of the reserve. As part of this Quad Biking/buggy package, we offer you the choice between a grilled Menu or a Mauritian Menu. Whether you have lunch at La Bigarade or La Citronelle restaurant, you are bound to be blown away as they are literally found in nature\'s lap, offering a unique dining experience in the midst of the indigenous fauna and flora of the park. After lunch, your adventure continues with some relaxation and fun activities. Your amazing journey continues with hiking across the beautiful landscape, where the zip line awaits you. A zip-line, also known as a flying fox, zip wire, or Tyrolean crossing, consists of a pulley suspended on a cable mounted on an incline. It is designed to enable a user, propelled by gravity, to travel from the top to the bottom of the inclined cable. You will get to ride the zipline in Mauritius (and in the entire Indian ocean) which is 500m in length, while discovering our stunning landscapes, forest and waterfalls from high above! As part of the zip line adventure, you can also watch stags in their natural habitat. Following the Zip line adventure, you can spend some more time in the reserve strolling along one of the many beautiful trails leading to a viewpoint at the mountain top. Captivating, breathtaking panoramic views and an utterly mesmerising nature scenery of almost the entire South Coast await…' ,
      price: 'Rs 1000' ,
      location: '',
      rating: '5',
      duration: '4-5 hours',
      image1: 'assets/quad/quad21.jpg',
      image2: 'assets/quad/quad22.jpg',
      image3: 'assets/quad/quad23.jpg',
      image4: 'assets/quad/quad24.jpg',
      image5: 'assets/quad/quad25.jpg',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageHiking = [
    TouristPlace(
      image: 'assets/hiking1.jpg',
      name: 'Hiking Le Morne Brabant',
      subtitle: 'As From Rs500 per adult',
      description: 'Le Morne Brabant is a mountain of the south-west of Mauritius, on the peninsula of le Morne. Our team has been the first ever guides in 2004 to bring guests from all over the planet on this majestic rock. Declared World Heritage by UNESCO since July 6, 2008, the site is a sanctuary of the runaway slaves who would have committed suicide by jumping off the cliff of the mountain. Le Morne Brabant is one of the most preserved and wildest mountains of the island. It is habitat to a very large variety of endemic and narrow-endemic species, such as the rare Trochetia Boutoniana, which is our floral emblem. Some steeper parts of the ascent will require the use of our hands to progress safely towards the top, where we’ll discover the breath-taking views on the west and south-west lagoons and part of of the island !' ,
      price: 'Rs 250' ,
      location: '',
      rating: '4.4',
      duration: 'Half Day',
      image1: 'assets/hiking/hiking1.jpg',
      image2: 'assets/hiking/hiking2.jpg',
      image3: 'assets/hiking/hiking3.jpg',
      image4: 'assets/hiking/hiking4.jpg',
      image5: 'assets/hiking/hiking5.jpg',

    ),
    TouristPlace(
      image: 'assets/hiking2.jpg',
      name: 'Hiking Sept Cascades (Tamarind Falls)',
      subtitle: 'As From Rs500 per adult',
      description: 'Marvel at the glorious nature on offer in Mauritius during this half-day hiking tour through the Seven Cascades of the Tamarind Falls. Led by an experienced guide, travel through lush forests and over dark volcanic rocks. From the top of the falls, admire stunning views over the surrounding canyons. Then, cool off with a swim in the pool and enjoy a natural water massage.' ,
      price: 'Rs 250' ,
      location: '',
      rating: '4.2',
      duration: 'Half Day',
      image1: 'assets/hiking/hiking6.jpg',
      image2: 'assets/hiking/hiking7.jpg',
      image3: 'assets/hiking/hiking8.jpg',
      image4: 'assets/hiking/hiking9.jpg',
      image5: 'assets/hiking/hiking10.jpg',

    ),
    TouristPlace(
      image: 'assets/hiking3.jpg',
      name: 'Hiking Le Pouce Mountain - 3rd Highest Mountain',
      subtitle: 'As From Rs500 per adult',
      description: 'Hike to the top of Mauritius’ third-highest mountain, Le Pouce, on this guided hike that begins in the Moka district. Join a small group and enjoy a meditative hike through lush forests abundant with indigenous trees and forests. Take in the views of Port Louis and other nearby mountain peaks, and enjoy a bit of time to relax when you summit Le Pouce.' ,
      price: 'Rs 250' ,
      location: '',
      rating: '4.1',
      duration: 'Half Day',
      image1: 'assets/hiking/hiking11.jpg',
      image2: 'assets/hiking/hiking12.jpg',
      image3: 'assets/hiking/hiking13.jpg',
      image4: 'assets/hiking/hiking14.jpg',
      image5: 'assets/hiking/hiking15.jpg',

    ),
    TouristPlace(
      image: 'assets/hiking4.jpg',
      name: 'Hiking in the Black River Gorges National Parc - Native Forest',
      subtitle: 'As From Rs500 per adult',
      description: 'Discover the Black River Gorges National Park in Mauritius on a hiking tour through the rain forest. Alongside a private guide, hike to various viewpoints for sweeping views of the park and its surroundings. Summit to 1,300 feet (400 meters) above sea level, admiring the views of villages and mountains of the West Coast, before descending back to the starting point.' ,
      price: 'Rs 250' ,
      location: '',
      rating: '4.7',
      duration: 'Half Day',
      image1: 'assets/hiking/hiking16.jpg',
      image2: 'assets/hiking/hiking17.jpg',
      image3: 'assets/hiking/hiking18.jpg',
      image4: 'assets/hiking/hiking19.jpg',
      image5: 'assets/hiking/hiking20.jpg',

    ),
    TouristPlace(
      image: 'assets/hiking5.jpg',
      name: 'Hiking - Ebony Forest Reserve Chamarel: Love Tree Tour',
      subtitle: 'As From Rs500 per adult',
      description: 'Leave a positive mark on the island of Mauritius during a tree-planting tour of the Ebony Forest Reserve, an indigenous forest home to more than 140 endemic plant and animal species. You’ll explore part of the area at a relaxed pace—numbers are limited to four people to ensure a personalized experience—before planting your tree and enjoying panoramic vistas at the aptly-named Sublime Point.' ,
      price: 'Rs 300' ,
      location: '',
      rating: '5',
      duration: 'Half Day',
      image1: 'assets/hiking/hiking21.jpg',
      image2: 'assets/hiking/hiking22.jpg',
      image3: 'assets/hiking/hiking23.jpg',
      image4: 'assets/hiking/hiking24.jpg',
      image5: 'assets/hiking/hiking25.jpg',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageHistorical = [
    TouristPlace(
      image: 'assets/historical1.jpg',
      name: 'Port-Louis Street Food Tour & China Town',
      subtitle: 'As From Rs500 per adult',
      description: 'Always trust a local when it comes to food recommendations and this street food tour of Port Louis is packed with tips. Join this small-group walking tour with a maximum of six participants and get acquainted with Port Louis\' top food vendors. A guide will share details about the island\'s history, culture, and culinary traditions. Try Mauritian-style roti, freshly squeezed sugarcane juice, and more.' ,
      price: 'Rs 200' ,
      location: '',
      rating: '4.7',
      duration: '3-4 hours',
      image1: 'assets/historical/historical1.jpg',
      image2: 'assets/historical/historical2.jpg',
      image3: 'assets/historical/historical3.jpg',
      image4: 'assets/historical/historical4.jpg',
      image5: 'assets/historical/historical5.jpg',

    ),
    TouristPlace(
      image: 'assets/historical2.jpg',
      name: 'Botanical Garden, Sugar Museum, Rum Tasting',
      subtitle: 'As From Rs500 per adult',
      description: 'Get a taste for both the sweet and bitter history of Mauritius during this 8-hour private tour of the island’s sugar industry, slave trade and lush tropical gardens. Join your private driver for a customized exploration at your own pace, stopping to visit sights like Sir Seewoosagur Ramgoolam Botanical Garden, sample local rum and explore Château de Labourdonnais, a 19th-century colonial mansion. You’ll also learn about the history of the island’s sugar industry at L’Aventure du Sucre and tour Port Louis, the island’s historic capital city. This flexible private tour also includes private vehicle transport.' ,
      price: 'Rs 400' ,
      location: '',
      rating: '4',
      duration: '3 hours',
      image1: 'assets/historical/historical6.jpg',
      image2: 'assets/historical/historical7.jpg',
      image3: 'assets/historical/historical8.jpg',
      image4: 'assets/historical/historical9.jpg',
      image5: 'assets/historical/historical10.jpg',

    ),
    TouristPlace(
      image: 'assets/historical3.jpg',
      name: 'Route of Indian Spirituality',
      subtitle: 'As From Rs500 per adult',
      description: 'A playful approach, but very respectful of Indian spirituality in Mauritius through 3 emblematic temples, its main deities, anecdotes and Mauritian history. Why does Shiva have a blue neck? Why does lingam need to be constantly watered? Why is Ganesh\'s right defense broken? … Maha Shivaratree, Cavadee, Ganesh Chaturti, Ganga Snan, Govinden? … What do we celebrate on the occasion of these festivals? Hindu religion, Tamil religion? We also offer on specific festival dates to participate and follow the processions or prayers.' ,
      price: 'Rs 350' ,
      location: '',
      rating: '4',
      duration: '3 hours',
      image1: 'assets/historical/historical11.jpg',
      image2: 'assets/historical/historical12.jpg',
      image3: 'assets/historical/historical13.jpg',
      image4: 'assets/historical/historical14.jpg',
      image5: 'assets/historical/historical15.jpg',

    ),
    TouristPlace(
      image: 'assets/historical4.jpg',
      name: 'Tea & Sugarcane Plantation Colonial Tour',
      subtitle: 'As From Rs500 per adult',
      description: 'This tour has been designed with great diligence and care for history and culture lovers! You will have the opportunity to visit a sugar factory and a tea factory. You will discover the process of the production in their museum as well as the historic aspects of this tour. You will enjoy the sugar and tea tasting sessions at the end of you visit to the tea museum and the sugar museum. You may wish to buy some souvenirs from their shops to bring back home! ' ,
      price: 'Rs 600' ,
      location: '',
      rating: '4.2',
      duration: '4 hours',
      image1: 'assets/historical/historical16.jpg',
      image2: 'assets/historical/historical17.jpg',
      image3: 'assets/historical/historical18.jpg',
      image4: 'assets/historical/historical19.jpg',
      image5: 'assets/historical/historical20.jpg',

    ),
    TouristPlace(
      image: 'assets/historical5.jpg',
      name: 'Cultures & Traditions Tour',
      subtitle: 'As From Rs500 per adult',
      description: 'This trip has been specially designed for tourists who want to explore our multi-cultural island. This trip is a visit to the places of worship of all religions of Maurititius. Start your day with a visit to Marie Reine de la Paix, which is an open Roman Catholic Chuch standing on the flank of Signal Mountain in Port-Louis. Our next stop will be at the beautiful Kwan Tee Pagoda to admire the beauty of Buddhism practiced by our Sino-Mauritian Population. We propose you to have lunch at our most loved Table d’Hôte where you will taste different dishes originated from different cultures and traditions of Mauritius! We will then drive through the capital city to visit the Cathedral of St. Louis, which is the biggest Roman Catholic Church of Mauritius. Your next stop is at the Jummah Mosque, where our muslim brothers have their daily prayers. We will then go to the hindu temple Shri Sockalingum Meenatchee Ammen, also known as the Kaylasson Temple.Enjoy your day!' ,
      price: 'Rs 500' ,
      location: '',
      rating: '4.8',
      duration: 'Half Day',
      image1: 'assets/historical/historical21.jpg',
      image2: 'assets/historical/historical22.jpg',
      image3: 'assets/historical/historical23.jpg',
      image4: 'assets/historical/historical24.jpg',
      image5: 'assets/historical/historical25.jpg',

    ),

  ];
  final List<TouristPlace> TouristDetailsPageCasino = [
    TouristPlace(
      image: 'assets/casino1.jpg',
      name: 'Casino Senator Grand Baie',
      subtitle: 'As From Rs500 per adult',
      description: 'Your first and only stop when it comes to Casinos in Mauritius. Senator Casino offers its customers a safe place to play their favourite Casino games: Slot Machines, Roulette, Van Lak, SicBo The have introduced the Ticket In/ Ticket Out system in the innovative gaming world of Mauritius. The bar has a very reasonable food and drinks in a very laid back atmosphere and is provided free of charge to customers.' ,
      price: '-' ,
      location: '',
      rating: '4.5',
      duration: '-',
      image1: 'assets/casino/casino1.jpg',
      image2: 'assets/casino/casino2.jpg',
      image3: 'assets/casino/casino3.jpg',
      image4: 'assets/casino/casino4.jpg',
      image5: 'assets/casino/casino5.jpg',

    ),
    TouristPlace(
      image: 'assets/casino2.jpg',
      name: 'Ti Vegas',
      subtitle: 'As From Rs500 per adult',
      description: 'Ti Vegas is the place for you if you are looking for Casino-type games! Come and play a large selection of games in a fun and friendly atmosphere. We have games such as slot machines, poker machines, automatic roulette, live games such as Van-Lack (Black-Jack), Sic-Bo (Big and Small) and poker,cash games and tournaments for both Texas Hold\'Em and Omaha Cash. Relax, have fun and enjoy.' ,
      price: '-' ,
      location: '',
      rating: '4.2',
      duration: '-',
      image1: 'assets/casino/casino6.jpg',
      image2: 'assets/casino/casino7.jpg',
      image3: 'assets/casino/casino8.jpg',
      image4: 'assets/casino/casino9.jpg',
      image5: 'assets/casino/casino10.jpg',

    ),
    TouristPlace(
      image: 'assets/casino3.jpg',
      name: 'Casino Senator Port Louis',
      subtitle: 'As From Rs500 per adult',
      description: 'Your first and only stop when it comes to Casinos in Mauritius. Senator Casino offers its customers a safe place to play their favourite Casino games: Slot Machines, Roulette, Van Lak, SicBo The have introduced the Ticket In/ Ticket Out system in the innovative gaming world of Mauritius. The bar has a very reasonable food and drinks in a very laid back atmosphere and is provided free of charge to customers.' ,
      price: '-' ,
      location: '',
      rating: '4.5',
      duration: '-',
      image1: 'assets/casino/casino11.jpg',
      image2: 'assets/casino/casino12.jpg',
      image3: 'assets/casino/casino13.jpg',
      image4: 'assets/casino/casino14.jpg',
      image5: 'assets/casino/casino15.jpg',

    ),
  ];
  final List<TouristPlace> TouristDetailsPageWaterfall = [
    TouristPlace(
      image: 'assets/cascade.jpg',
      name: 'Les 7 Cascades',
      subtitle: 'As From Rs500 per adult',
      description: 'Marvel at the glorious nature on offer in Mauritius during this half-day hiking tour through the Seven Cascades of the Tamarind Falls. Led by an experienced guide, travel through lush forests and over dark volcanic rocks. From the top of the falls, admire stunning views over the surrounding canyons. Then, cool off with a swim in the pool and enjoy a natural water massage.' ,
      price: 'Rs 300' ,
      location: '',
      rating: '4.7',
      duration: '4 hours',
      image1: 'assets/waterfalls/waterfall1.jpg',
      image2: 'assets/waterfalls/waterfall2.jpg',
      image3: 'assets/waterfalls/waterfall3.jpg',
      image4: 'assets/waterfalls/waterfall4.jpg',
      image5: 'assets/waterfalls/waterfall5.jpg',

    ),
    TouristPlace(
      image: 'assets/cascade1.jpg',
      name: 'Chamarel Waterfalls',
      subtitle: 'As From Rs500 per adult',
      description: 'Undoubtedly the tallest single-drop waterfall in Mauritius at about 100m high, the Chamarel Waterfall is a striking piece of nature standing amid dense vegetation. Fed by the waters of three distinct streams pouring into Saint Denis River, it has a powerful rush with a peak flow rate in excess of 40,000 m³ per minute. Overhanging the ledge of a basalt cliff, the Chamarel Waterfall splashes into an oval pool before flowing down a 6km tropical-forest-fringed canyon to Baie du Cap. The sight not only floods the senses with freshness but it is also a spectacular showcase of millions of years of volcanic activity. The dramatic landscape if formed by lavas of two different ages. The layer of brecciated basalt near the base dates from between 10 to 8 million years ago, on top of which lies a second layer from the intermediate period between 3.5 and 1.7 million years ago.No wonder why the Chamarel Waterfall is ranked among the most sought-after sightseeing spots in Mauritius!' ,
      price: 'Rs 300' ,
      location: '',
      rating: '4.4',
      duration: '3 hours',
      image1: 'assets/waterfalls/waterfall6.jpg',
      image2: 'assets/waterfalls/waterfall7.jpg',
      image3: 'assets/waterfalls/waterfall8.jpg',
      image4: 'assets/waterfalls/waterfall9.jpg',
      image5: 'assets/waterfalls/waterfall10.jpg',

    ),
    TouristPlace(
      image: 'assets/cascade2.jpg',
      name: 'Rochester Falls',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: 'Rs 300' ,
      location: '',
      rating: '4.6',
      duration: '3 hours',
      image1: 'assets/waterfalls/waterfall11.jpg',
      image2: 'assets/waterfalls/waterfall12.jpg',
      image3: 'assets/waterfalls/waterfall13.jpg',
      image4: 'assets/waterfalls/waterfall14.jpg',
      image5: 'assets/waterfalls/waterfall15.jpg',

    ),
    TouristPlace(
      image: 'assets/cascade3.jpg',
      name: 'Alexandra Falls',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: 'Rs 300' ,
      location: '',
      rating: '4.8',
      duration: '3 hours',
      image1: 'assets/waterfalls/waterfall16.jpg',
      image2: 'assets/waterfalls/waterfall17.jpg',
      image3: 'assets/waterfalls/waterfall18.jpg',
      image4: 'assets/waterfalls/waterfall19.jpg',
      image5: 'assets/waterfalls/waterfall20.jpg',

    ),
    TouristPlace(
      image: 'assets/cascade4.jpg',
      name: 'Cascade De 500 Pieds',
      subtitle: 'As From Rs500 per adult',
      description: '' ,
      price: 'Rs 300' ,
      location: '',
      rating: '5',
      duration: '3 hours',
      image1: 'assets/waterfalls/waterfall21.jpg',
      image2: 'assets/waterfalls/waterfall22.jpg',
      image3: 'assets/waterfalls/waterfall23.jpg',
      image4: 'assets/waterfalls/waterfall24.jpg',
      image5: 'assets/waterfalls/waterfall25.jpg',

    ),
  ];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              color: Colors.white70,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                          places: TouristDetailsPageDolpins
                        ),
                      ),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageNature
                        ),
                      ),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageCatamaran
                        ),
                      ),
                    );
                  } else if (index == 3){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TouristDetailsPage(
                              places: TouristDetailsPageQuad
                          ),
                      ),
                    );
                  }else if (index == 4){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageHiking
                        ),
                      ),
                    );
                  }else if (index == 5){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageHistorical
                        ),
                      ),
                    );
                  }else if (index == 6){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageCasino
                        ),
                      ),
                    );
                  }else if (index == 7){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                            places: TouristDetailsPageWaterfall
                        ),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recommendedPlaces[index].image,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            recommendedPlaces[index].text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        itemCount: recommendedPlaces.length,
      ),
    );
  }
}
