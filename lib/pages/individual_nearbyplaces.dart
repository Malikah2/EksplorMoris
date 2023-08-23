
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:example/models/nearby_places_model.dart';
import 'package:flutter/material.dart';

class IndividualNearbyplacePage extends StatefulWidget {
  final NearbyPlaceModel nearbyPlace;

  IndividualNearbyplacePage({Key? key, required this.nearbyPlace}) : super(key: key);

  @override
  _IndividualNearbyplacePageState createState() => _IndividualNearbyplacePageState();
}

class _IndividualNearbyplacePageState extends State<IndividualNearbyplacePage> {
  bool isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: Image.asset(widget.nearbyPlace.image),
            ),
            buttonArrow(context),
            scroll(),
          ],
        ),
      ),
    );
  }

  Widget buttonArrow(BuildContext context){
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
            filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10
            ),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white,
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
                  widget.nearbyPlace.name,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20,),
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
                    const SizedBox(width: 12,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.location_on, color: Colors.white,),
                        ),
                        const SizedBox(width: 8,),
                        Text(widget.nearbyPlace.duration),
                      ],
                    ),
                    const SizedBox(width: 12,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.star_rate, color: Colors.white,),
                        ),
                        const SizedBox(width: 8,),
                        Text(widget.nearbyPlace.rating),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(height: 5,),
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDescriptionExpanded = !isDescriptionExpanded;
                    });
                  },
                  child: Text(
                    isDescriptionExpanded
                        ? widget.nearbyPlace.description
                        : (widget.nearbyPlace.description.length > 100
                        ? widget.nearbyPlace.description.substring(0, 100) + "... Read More"
                        : widget.nearbyPlace.description),
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
                const SizedBox(height: 10,),
                CarouselSlider(
                  items: [
                    Image.asset(widget.nearbyPlace.image1, height: 155,width: 270,),
                    Image.asset(widget.nearbyPlace.image2, height: 155,width: 270,),
                    Image.asset(widget.nearbyPlace.image3, height: 155,width: 270,),
                    Image.asset(widget.nearbyPlace.image4, height: 155,width: 270,),
                    Image.asset(widget.nearbyPlace.image5, height: 155,width: 270,),
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