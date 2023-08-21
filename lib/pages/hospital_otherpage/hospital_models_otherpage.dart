import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../other_page.dart';
import 'hospitals_otherpage.dart';

class HospitalsModels {
  final String image;
  final String name;
  final String address;
  final String number;
  HospitalsModels({
    required this.image,
    required this.name,
    required this.address,
    required this.number,
  });
}

List <HospitalsModels> hospitalsmodels = [
  HospitalsModels(
    image: "assets/hospitals/hospital.jpg",
    name: "Wellkin Hospital",
    address: "Reduit",
    number: "Tel: 6051000"
  ),
  HospitalsModels(
    image: "assets/hospitals/hospital.jpg",
    name: "Jawaharlal Nehru Hospital (JNH)",
    address: "Rose Belle",
    number: "Tel: 603-7000 "
  ),
  HospitalsModels(
    image: "assets/hospitals/hospital.jpg",
    name: "Centre Medical du Nord",
    address: "Grand Bay",
    number: "Tel: 2631010 "
  ),
  HospitalsModels(
      image: "assets/hospitals/hospital.jpg",
      name: "Centre Medical du Nord",
      address: "Grand Bay",
      number: "Tel: 2631010 "
  ),
  HospitalsModels(
      image: "assets/hospitals/hospital.jpg",
      name: "Centre Medical du Nord",
      address: "Grand Bay",
      number: "Tel: 2631010 "
  ),
];