import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../other_page.dart';
import '../hospital_otherpage/hospitals_otherpage.dart';
import 'priv_hospitals.dart';
import 'hospitals_viewall.dart';

class PrivHospitals {
  final String image;
  final String name;
  final String address;
  final String number;
  PrivHospitals ({
    required this.image,
    required this.name,
    required this.address,
    required this.number,
  });
}

List <PrivHospitals> privhospitals = [
  PrivHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Wellkin Hospital",
    address: "Reduit",
    number: "Tel: 6051000",
  ),
  PrivHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Fortis Clinical Darne",
    address: "Curepipe",
    number: "Tel: 6012300",
  ),
  PrivHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Grand Bay Medical & Diagnostic Centre",
    address: "Grand Bay",
    number: "Tel: 2631212",
  ),
  PrivHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "City Clinic",
    address: "Port Louis",
    number: "Tel: 2061600",
  ),
  PrivHospitals(
    image: "assets/hospitals/hospital.jpg",
    name: "Centre Medical du Nord",
    address: "Grand Bay",
    number: "Tel: 2631010",
  ),
];