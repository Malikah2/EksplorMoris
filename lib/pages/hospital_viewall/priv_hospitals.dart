import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../home_widget.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../hotline/hotlines.dart';
import '../other_page.dart';
import '../hospital_otherpage/hospital_models_otherpage.dart';
import 'hospitals_viewall.dart';
import 'priv_hospitals_models.dart';

class AllPrivHospitals extends StatelessWidget {
  const AllPrivHospitals ({Key? key}) : super(key: key);

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
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
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