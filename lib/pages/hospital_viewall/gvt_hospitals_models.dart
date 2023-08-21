import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../other_page.dart';
import '../hospital_otherpage/hospitals_otherpage.dart';
import 'gvt_hospitals.dart';
import 'hospitals_viewall.dart';

class GvtHospitals {
  final String image;
  final String name;
  final String address;
  final String number;
  GvtHospitals ({
    required this.image,
    required this.name,
    required this.address,
    required this.number,
  });
}

List <GvtHospitals> gvthospitals = [
  GvtHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Ears Nose and Throat Hospital (ENT)",
    address: "Saint Vincent Depaul Road, Vacoas ",
    number: "Tel: 6862061"
  ),
  GvtHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "S. Bharati Eye Hospital",
    address: "Moka ",
    number: "Tel: 4334015 "
  ),
  GvtHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Poudre D’or Chest Hospital ",
    address: "Royal Road, Poudre D’or",
    number: "Tel: 2452532"
  ),
  GvtHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Brown Sequard Mental Health Care Centre",
    address: "Pope Hennessy Street, Beau Bassin ",
    number: "Tel: 4542071"
  ),
  GvtHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Jawaharlal Nehru Hospital (JNH)",
    address: "Rose Belle",
    number: "Tel: 6037000"
  ),
];