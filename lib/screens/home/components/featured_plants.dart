

import 'package:flutter/material.dart';
import 'package:plant/constant.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          FeaturePlantCard(image: "assets/images/bottom_img_1.png"),
          FeaturePlantCard(image: "assets/images/bottom_img_2.png"),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key, required this.image,
    
  }) : super(key: key);

  final String image;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},
      child: Container(
         width: size.width*0.8,
         height: 185,
         margin: EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding/2,bottom: kDefaultPadding/2),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image),
          )
           ),
         ),
    );
  }
}


