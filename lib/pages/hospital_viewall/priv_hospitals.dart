import 'package:flutter/material.dart';
import 'priv_hospitals_models.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:url_launcher/url_launcher.dart';
class AllPrivHospitals extends StatelessWidget {
   AllPrivHospitals ({Key? key}) : super(key: key);
// FlutterTts flutterTts = FlutterTts();
// Future<void> speakText(String text) async {
//   await flutterTts.setLanguage("en-US");
//   await flutterTts.speak(text);
// }

  Future<void> _launchPhoneDialer(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunch(phoneUri.toString())) {
      await launch(phoneUri.toString());
    } else {
      // Handle error: unable to launch phone dialer.
      print('Error launching phone dialer');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Container(
              width: 400, // Set the desired width
              child: Card(
                elevation: 0.4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap:() {
                    _launchPhoneDialer(privhospitals[index].number);
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            privhospitals[index].image,
                            height: double.maxFinite,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 25),
                              Text(
                                privhospitals[index].name,
                                maxLines: 2, // Adjust the number of lines as needed
                                overflow: TextOverflow.ellipsis, // Show ellipsis if text overflows
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                privhospitals[index].address,
                                maxLines: 2, // Adjust the number of lines as needed
                                overflow: TextOverflow.ellipsis, // Show ellipsis if text overflows
                              ),
                              Text(
                                privhospitals[index].number,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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