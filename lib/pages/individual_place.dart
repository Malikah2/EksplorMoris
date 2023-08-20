// import 'package:example/pages/tourist_details_page.dart';
// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
//
//
// class IndividualPlacePage extends StatelessWidget {
//   final TouristPlace place;
//
//   const IndividualPlacePage({Key? key, required this.place}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverPadding(
//             padding: const EdgeInsets.all(16.0),
//             sliver: SliverToBoxAdapter(
//               child: Column(
//                 children: [
//                   SizedBox(height: 30.0,),
//                   Container(
//                     height: size.height * 0.30,
//                     child: Card(
//                       elevation: 4,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Stack(
//                         alignment: Alignment.bottomLeft,
//                         children: [
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Image.asset(
//                               place.image,
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Container(
//                               margin: const EdgeInsets.all(10.0),
//                               padding: const EdgeInsets.all(8.0),
//                               decoration: BoxDecoration(
//                                 color: Colors.black.withOpacity(0.5),
//                                 borderRadius: BorderRadius.circular(15),
//
//                               ),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Icon(
//                                     Icons.star,
//                                     color: Colors.yellow,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     place.rating,
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//
//                   SizedBox(height: 20.0,),
//                   Text(
//                     place.name,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   // if (place.subtitle.isEmpty)
//                   //   SizedBox(height: 6.0,),
//                   // if (place.subtitle.isNotEmpty)
//                     Text(
//                       place.subtitle,
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                   SizedBox(height: 10.0,),
//                   Text(
//                     place.description,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
//       floatingActionButton: Container(
//         margin: const EdgeInsets.only(top: 2.0, left: 2.0),
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.white.withOpacity(0.5),
//               blurRadius: 8,
//               spreadRadius: 2,
//             ),
//           ],
//         ),
//         child: FloatingActionButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Icon(Ionicons.chevron_back),
//           backgroundColor: Colors.transparent,
//         ),
//       ),
//     );
//     ;
//   }
// }

import 'dart:ui';
import 'package:example/pages/tourist_details_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class IndividualPlacePage extends StatefulWidget {
  final TouristPlace place;

  IndividualPlacePage({Key? key, required this.place}) : super(key: key);

  @override
  _IndividualPlacePageState createState() => _IndividualPlacePageState();
}

class _IndividualPlacePageState extends State<IndividualPlacePage> {
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
              child: Image.asset(widget.place.image),
            ),
            buttonArrow(context),
            scroll(),
          ],
        ),
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
                  widget.place.name,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.attach_money, color: Colors.white),
                        ),
                        const SizedBox(width: 8),
                        Text(widget.place.price),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.access_time_outlined, color: Colors.white),
                        ),
                        const SizedBox(width: 8),
                        Text(widget.place.duration),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.star_rate, color: Colors.white),
                        ),
                        const SizedBox(width: 8),
                        Text(widget.place.rating),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(height: 5),
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDescriptionExpanded = !isDescriptionExpanded;
                    });
                  },
                  child: Text(
                    isDescriptionExpanded
                        ? widget.place.description
                        : widget.place.description.substring(0, 100) + "... Read More",
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
                const SizedBox(height: 10),
                CarouselSlider(
                  items: [
                    Image.asset(widget.place.image1, height: 155, width: 270),
                    Image.asset(widget.place.image2, height: 155, width: 270),
                    Image.asset(widget.place.image3, height: 155, width: 270),
                    Image.asset(widget.place.image4, height: 155, width: 270),
                    Image.asset(widget.place.image5, height: 155, width: 270),

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
