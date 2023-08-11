import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_widget.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';


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
              Text("Nauthoo",
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

        children: const [



        ],

      ),

    );
  }
}

