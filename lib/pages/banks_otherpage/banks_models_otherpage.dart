import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../other_page.dart';
import 'banks_otherpage.dart';

class BanksModels {
  final String image;
  final String name;
  final String address;
  final String number;
  BanksModels({
    required this.image,
    required this.name,
    required this.address,
    required this.number,
  });
}

List <BanksModels> banksmodels = [
  BanksModels(
    image: "assets/bank/bank.jpg",
    name: "The Mauritius Commercial Bank Limited",
    address: "Sir William Newton Street, Port Louis, Mauritius",
    number: "Tel: 2025000",
  ),
  BanksModels(
    image: "assets/bank/bank.jpg",
    name: "Standard Bank Mauritius Limited",
    address: "Level 9, Tower A 1 CyberCity Ebene, Mauritius",
    number: "Tel: 4025000 ",
  ),
  BanksModels(
    image: "assets/bank/bank.jpg",
    name: "HSBC Bank (Mauritius) Limited",
    address: "6th Floor, HSBC Centre, 18, Cybercity, Ebene ",
    number: "Tel: 4038333 ",
  ),
  BanksModels(
    image: "assets/bank/bank.jpg",
    name: "AfrAsia Bank Limited",
    address: "Bowen Square, 10, Dr Ferrière Street, Port Louis",
    number: "Tel: 2085500",
  ),
  BanksModels(
    image: "assets/bank/bank.jpg",
    name: "ABC Banking Corporation Ltd",
    address: "Duke of Edinburg Avenue, Place D’Armes, Port‐Louis",
    number: "Tel: 2068000",
  ),
];