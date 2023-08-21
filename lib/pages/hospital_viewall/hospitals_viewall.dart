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
import 'gvt_hospitals.dart';
import 'priv_hospitals.dart';

class AllHospitals extends StatelessWidget {
  const AllHospitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Government Hospitals", style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          const SizedBox(height:10),
          const AllGvtHospitals(),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Private Hospitals", style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          const SizedBox(height:10),
          const AllPrivHospitals(),
        ]
      )
    );
  }
}