import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../other_page.dart';
import 'hotlines.dart';

class HotlineModels {
  final String image;
  final String name;
  final String number;
  HotlineModels({
    required this.image,
    required this.name,
    required this.number,
  });
}

List <HotlineModels> hotlinemodels = [
  HotlineModels(
    image: "assets/hotlines/tsupport.jpg",
    name: "Tourist Support Service",
    number: "152",
  ),
  HotlineModels(
    image: "assets/hotlines/ambulance.jpg",
    name: "Ambulance",
    number: "114",
  ),
  HotlineModels(
    image: "assets/hotlines/police.jpg",
    name: "Police",
    number: "999",
  ),
  HotlineModels(
    image: "assets/hotlines/cg.jpg",
    name: "Coastguard",
    number: "2122747",
  ),
  HotlineModels(
    image: "assets/hotlines/fire.jpg",
    name: "Fire Rescue",
    number: "115",
  ),
  HotlineModels(
    image: "assets/hotlines/sos.jpg",
    name: "SOS",
    number: "150",
  ),
];