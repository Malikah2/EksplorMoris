import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:example/pages/round_details_page.dart';
import 'package:example/pages/tourist_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorites.dart';

Favorites favorites = Favorites();

class IndividualLocationPage extends StatefulWidget {
  final TouristPlace roundplace;

  IndividualLocationPage({Key? key, required this.roundplace})
      : super(key: key);

  @override
  _IndividualLocationPageState createState() => _IndividualLocationPageState();
}

class _IndividualLocationPageState extends State<IndividualLocationPage> {
  bool isDescriptionExpanded = false;
  // final List<TouristPlace> favoritesPlaces = [];
  late IconData currentIcon = Icons.favorite_border;
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: Image.asset(widget.roundplace.image),
            ),
            buttonArrow(context),
            scroll(),
          ],
        ),
        floatingActionButton: Column(
          children: [
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                String message = favorites.toggleFavorites(widget.roundplace);
                String showMessage = message == 'added'
                    ? '${widget.roundplace.name} added to favorites'
                    : '${widget.roundplace.name} removed from favorites';

                final scaffoldMessenger = ScaffoldMessenger.of(context);
                scaffoldMessenger.showSnackBar(
                  SnackBar(
                    content: Text(showMessage),
                    duration: Duration(seconds: 1),
                  ),
                );
                setState(() {
                  saved = !saved;
                  currentIcon = saved
                      ? Icons.favorite
                      : Icons.favorite_border;
                });

              },
              icon: Icon(
                currentIcon = favorites.isFavorite(widget.roundplace)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      ),
    );
  }

  Widget buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                Text(
                  widget.roundplace.name,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Row(
                    //   children: [
                    //     CircleAvatar(
                    //       radius: 25,
                    //       child: Icon(Icons.attach_money, color: Colors.white,),
                    //     ),
                    //     const SizedBox(width: 8,),
                    //     Text(widget.roundplace.price),
                    //   ],
                    // ),
                    const SizedBox(
                      width: 12,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(widget.roundplace.duration),
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(
                            Icons.star_rate,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(widget.roundplace.rating),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    height: 5,
                  ),
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDescriptionExpanded = !isDescriptionExpanded;
                    });
                  },
                  child: Text(
                    isDescriptionExpanded
                        ? widget.roundplace.description
                        : (widget.roundplace.description.length > 100
                            ? widget.roundplace.description.substring(0, 100) +
                                "... Read More"
                            : widget.roundplace.description),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  items: [
                    Image.asset(
                      widget.roundplace.image1,
                      height: 155,
                      width: 270,
                    ),
                    Image.asset(
                      widget.roundplace.image2,
                      height: 155,
                      width: 270,
                    ),
                    Image.asset(
                      widget.roundplace.image3,
                      height: 155,
                      width: 270,
                    ),
                    Image.asset(
                      widget.roundplace.image4,
                      height: 155,
                      width: 270,
                    ),
                    Image.asset(
                      widget.roundplace.image5,
                      height: 155,
                      width: 270,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 155,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
