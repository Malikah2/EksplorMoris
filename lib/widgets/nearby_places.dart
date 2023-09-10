import 'package:example/pages/individual_location.dart';
import 'package:flutter/material.dart';
import 'package:example/models/nearby_places_model.dart';
import 'package:flutter_tts/flutter_tts.dart';

class NearbyPlaces extends StatelessWidget {
  NearbyPlaces({Key? key}) : super(key: key);
  FlutterTts flutterTts = FlutterTts();

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlaces.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IndividualLocationPage(
                            roundplace: nearbyPlaces[index]),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          nearbyPlaces[index].image,
                          height: double.maxFinite,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    speakText(nearbyPlaces[index].name);
                                  },
                                  child: Text(
                                    nearbyPlaces[index].name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // DISTANCE WIDGET
                            //const Distance(),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 19,
                                ),
                                const Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                const Spacer(),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black54,
                                    ),
                                    text: nearbyPlaces[index].distance,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
