import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../other_page.dart';
import 'pharmacies_otherpage.dart';

class PharmaciesModels {
  final String image;
  final String name;
  final String address;
  final String number;
  PharmaciesModels({
    required this.image,
    required this.name,
    required this.address,
    required this.number,
  });
}

List <PharmaciesModels> pharmaciesmodels = [
  PharmaciesModels(
    image: "assets/pharmacy/pharmacy.jpg",
    name: "UltraPharm Pharmacy",
    address: "65, Royal Road	Curepipe Road",
    number: "Tel: 6700734",
  ),
  PharmaciesModels(
    image: "assets/pharmacy/pharmacy.jpg",
    name: "WellCare Pharmacy",
    address: "Royal Road,	Mahebourg",
    number: "Tel: 6317748",
  ),
  PharmaciesModels(
    image: "assets/pharmacy/pharmacy.jpg",
    name: "Life Pharmacy",
    address: "36, Sir W. Newton Street,	Port Louis",
    number: "Tel: 2082009",
  ),
  PharmaciesModels(
    image: "assets/pharmacy/pharmacy.jpg",
    name: "ProCare Pharmacy",
    address: "2A, Avenue des Capucines, Quatre Bornes",
    number: "Tel: 4659168",
  ),
  PharmaciesModels(
    image: "assets/pharmacy/pharmacy.jpg",
    name: "MedPlus Pharmacy",
    address: "175, John Kennedy Avenue,	Vacoas",
    number: "Tel: 6862121",
  ),
];