import 'package:example/pages/individual_location.dart';
import 'package:example/pages/tourist_details_page.dart';
import 'package:example/repository/authentication_repository/authentication_repository.dart';
import 'package:example/widgets/location_card.dart';
import 'package:example/widgets/nearby_places.dart';
import 'package:example/widgets/recommended_places.dart';
import 'package:example/widgets/tourist_places.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  bool noMatchFound = false;
  List<TouristPlace> searchResults = [];
  bool isSearchBarFocused = false;
  final FocusNode _searchFocusNode = FocusNode();
  List<TouristPlace> allPlaces = RecommendedPlaces().combineAllPlaces();

  FlutterTts flutterTts = FlutterTts();

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  void _onSearchBarFocusChange() {
    setState(() {
      isSearchBarFocused = _searchFocusNode.hasFocus;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchFocusNode.addListener(_onSearchBarFocusChange);
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show a dialog to confirm leaving the app
        bool? shouldLeave = await showExitConfirmationDialog(context);
        if (isSearchBarFocused) {
          _searchFocusNode.unfocus();
          return false;
        }
        return shouldLeave ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  speakText("Good Morning Malikah");
                },
                child:  Text("Good Morning\nMalikah", style: Theme.of(context).textTheme.labelMedium),
              ),

            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                speakText("Back");
                AuthenticationRepository.instance.logout();
              },
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 12),
                child: IconButton(
                  onPressed: () {
                    AuthenticationRepository.instance.logout();
                  },
                  icon: Icon(Ionicons.arrow_back_circle_outline),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: [
            buildSearchBar(),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: isSearchBarFocused ? 300 : 0,
              child: Visibility(
                visible: isSearchBarFocused,
                maintainState: true,
                child: buildSearchResults(),
              ),
            ),
            // Location card
            LocationCard(),
            const SizedBox(
              height: 15,
            ),
            TouristPlaces(),
            //categories
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    speakText("Recommendations");
                  },
                  child: Text(
                    "Recommendation",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            //recommendation
            const SizedBox(
              height: 10,
            ),
            RecommendedPlaces(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    speakText("Nearby From You");
                  },
                  child: Text(
                    "Nearby From You",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                //TextButton(onPressed: (){}, child: const Text("View All"),)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            NearbyPlaces(),
          ],
        ),
      ),
    );
  }

  Widget buildSearchResults() {
    if (noMatchFound) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Ionicons.location,
            size: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'No Locations Found',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ));
    } else {
      return ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          final place = searchResults[index];
          return GestureDetector(
            onTap: () {
              speakText(place.name);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      IndividualLocationPage(roundplace: place),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10), // Add space at the top
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                title: GestureDetector(
                  onTap: () {
                    speakText(place.name);
                  },
                    child: Text(place.name)),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10), // Rounded corners for image
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      place.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Add additional fields as needed

              ),

            ),
          );
        },
      );
    }
  }

  void filterRecipes(String query) {
    setState(() {
      if (query.isEmpty) {
        searchResults = List.from(
            allPlaces); // Reset the search results to all stored recipes
      } else {
        searchResults = allPlaces
            .where((place) =>
                place.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
      noMatchFound = searchResults.isEmpty; // Update the flag
    });
  }

  Widget buildSearchBar() {
    return TextField(
      controller: _searchController,
      onChanged: filterRecipes,
      decoration: InputDecoration(
        hintText: 'Search places',
        prefixIcon: Icon(
          Icons.search,
          color: Colors.blue,
        ),
        suffixIcon: isSearchBarFocused
            ? IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    _searchController.clear();
                    filterRecipes('');
                    isSearchBarFocused = false;
                  });
                },
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade600, width: 2),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onTap: () {
        setState(() {
          isSearchBarFocused = true;
        });
      },
      onEditingComplete: () {
        setState(() {
          isSearchBarFocused = false;
        });
      },
    );
  }

  Future<bool?> showExitConfirmationDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Text('Do you really want to exit the app?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true); //Allow exit
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false); //stay in app
              },
            ),
          ],
        );
      },
    );
  }
}
