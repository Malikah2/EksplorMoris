import 'package:example/pages/individual_location.dart';
import 'package:example/pages/tourist_details_page.dart';
import 'package:example/repository/authentication_repository/authentication_repository.dart';
import 'package:example/widgets/location_card.dart';
import 'package:example/widgets/nearby_places.dart';
import 'package:example/widgets/recommended_places.dart';
import 'package:example/widgets/tourist_places.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearchBarVisible = false;
  bool _isSearchEmpty = false;
  bool noMatchFound = false;
  List<TouristPlace> searchResults = [];
  bool isSearchBarFocused = false;
  final FocusNode _searchFocusNode = FocusNode();
  List<TouristPlace> allPlaces = RecommendedPlaces().combineAllPlaces();

  // List<TouristPlace> filteredPlaces = [];

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
              const Text("Good Morning"),
              Text(
                "Malikah",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          actions: [
            // IconButton(
            //     icon: Icon(Ionicons.search_outline),
            //     onPressed: () {
            //       setState(() {
            //         _isSearchBarVisible = !_isSearchBarVisible;
            //       });
            //     }),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 12),
              child: IconButton(
                onPressed: () {
                  AuthenticationRepository.instance.logout();
                },
                icon: Icon(Ionicons.arrow_back_circle_outline),
              ),
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: [
            //SearchBar
            // Visibility(
            //   visible: _isSearchBarVisible,
            //   child: Padding(
            //     padding:
            //     const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            //     child: TextFormField(
            //       controller: _searchController,
            //       onChanged: (value) {
            //         setState(() {
            //           filteredPlaces = _filterPlaces(value);
            //         });
            //       },
            //       decoration: InputDecoration(
            //         hintText: "Search...",
            //         prefixIcon: Icon(Icons.search),
            //         border: OutlineInputBorder(),
            //       ),
            //     ),
            //   ),
            // ),
            // Visibility(
            //   visible: _isSearchBarVisible,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           child: TextFormField(
            //             controller: _searchController,
            //             onChanged: (value) {
            //               setState(() {
            //                 filteredPlaces = _filterPlaces(value);
            //                 _isSearchEmpty = value.isEmpty;
            //               });
            //             },
            //             decoration: InputDecoration(
            //               hintText: "Search...",
            //               prefixIcon: Icon(Icons.search),
            //               border: OutlineInputBorder(),
            //             ),
            //           ),
            //         ),
            //         if (!_isSearchEmpty)
            //           IconButton(
            //             icon: Icon(Icons.close),
            //             onPressed: () {
            //               setState(() {
            //                 _searchController.clear();
            //                 // filteredPlaces = allPlaces; // Reset to show all places
            //                  _isSearchEmpty = true;
            //               });
            //             },
            //           ),
            //       ],
            //     ),
            //   ),
            // ),

            // Display filtered places
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: filteredPlaces.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text(filteredPlaces[index].name),
            //       );
            //     }
            // ),

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
                Text(
                  "Recommendation",
                  style: Theme.of(context).textTheme.headline6,
                ),
                //TextButton(onPressed: (){}, child: Text("View All")),
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
                Text(
                  "Nearby From You",
                  style: Theme.of(context).textTheme.headline6,
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
                title: Text(place.name),
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
        hintText: 'Search recipes',
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

  // List<TouristPlace> _filterPlaces(String searchQuery) {
  //   searchQuery = searchQuery.toLowerCase();
  //   return allPlaces.where((place) {
  //     return place.name.toLowerCase().contains(searchQuery);
  //     //add conditions for filtering
  //   }
  //   ).toList();
  // }

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
