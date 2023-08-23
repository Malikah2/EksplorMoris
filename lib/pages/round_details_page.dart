import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/pages/individual_location.dart';

class roundDetails {
  final String image;
  final String name;
  final String subtitle;
  final String description;
  final String price;
  final String location;
  final String rating;
  final String duration;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;

  roundDetails({
    required this.image,
    required this.name,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.location,
    required this.rating,
    required this.duration,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
  });
}
class roundDetailsPage extends StatelessWidget {
  final List<roundDetails> placeList;

  const roundDetailsPage({Key? key, required this.placeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(5.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final place = placeList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IndividualLocationPage(
                            roundplace: place,
                                                       // Pass the selected place to the details page
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          height: size.height * 0.30,
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    place.image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(15),

                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text(
                                          place.rating,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          place.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        // if (place.subtitle.isEmpty)
                        //   SizedBox(
                        //     height: 6.0,
                        //   ),
                        // if (place.subtitle.isNotEmpty)
                        //   Text(
                        //     place.subtitle,
                        //     style: TextStyle(
                        //       fontSize: 12,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //     textAlign: TextAlign.right,
                        //   ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  );
                },
                childCount: placeList.length,
              ),
            ),
          ),
        ],
      ),

      // ... Existing FloatingActionButton setup ...
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 2.0, left: 2.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Ionicons.chevron_back),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}