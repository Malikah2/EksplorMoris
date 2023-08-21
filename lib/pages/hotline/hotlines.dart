import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'hotline_models.dart';

class Hotlines extends StatelessWidget {
  const Hotlines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12)
                )
              ),
              child:InkWell(
                onTap:() {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                  children:[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        hotlinemodels[index].image,
                        width:double.maxFinite,
                        fit: BoxFit.cover,
                        height:150,
                      ),
                    ),
                    const SizedBox(height:5),
                    Row(
                      children:[
                         Text(
                          hotlinemodels[index].name,
                          style: TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height:5),
                    Row(
                      children:[
                         Text(
                          hotlinemodels[index].number,
                          style: TextStyle(fontSize:12),
                        )
                      ],
                    )
                  ],
                ),
                ),
            ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        itemCount: hotlinemodels.length),
      );
  }
}
