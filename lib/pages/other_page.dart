import 'package:example/pages/home_page.dart';
import 'package:example/pages/pharmacy_viewall/pharmacies_viewall.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_widget.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'hospital_otherpage/hospitals_otherpage.dart';
import 'hotline/hotlines.dart';
import 'hospital_viewall/hospitals_viewall.dart';
import 'pharmacy_otherpage/pharmacies_otherpage.dart';
import 'banks_otherpage/banks_otherpage.dart';
import 'banks_viewall/banks_viewall.dart';


class OtherPage extends StatelessWidget{
  const OtherPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:AppBar(

          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,

          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("Good Morning"),
              Text("Banon",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),

          actions: const [
            CustomIconButton(
              icon: Icon(Ionicons.search_outline),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 12),
              child: CustomIconButton(
                icon: Icon(Ionicons.notifications_outline),
              ),
            ),
          ]

      ),


      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children:  [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotlines", style: Theme.of(context).textTheme.headline6,
                  ),
                  //TextButton(onPressed: (){}, child: Text("View All")),
                ],
            ),

          const SizedBox(height:10),
          const Hotlines(),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hospitals & Clinics", style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: (){
                Navigator.pushReplacement(
                  context, MaterialPageRoute(
                    builder: (context)=> const AllHospitals(),
                  ),
                );
              },
              child: Text("View All")),
            ],
          ),
          const SizedBox(height:10),
          const Hospitals(),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pharmacy", style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: (){
                Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=> const AllPharmacies(),
                ),
                );
              },
                  child: Text("View All")),
            ],
          ),
          const SizedBox(height:10),
          const Pharmacy(),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Banks", style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: (){
                Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=> const AllBanks(),
                ),
                );
              },
                  child: Text("View All")),
            ],
          ),
          const SizedBox(height:10),
          const Bank(),
        ],

      ),

    );
  }
}

