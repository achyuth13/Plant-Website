import 'package:flutter/material.dart';
import 'package:plant/constant.dart';
import 'package:plant/screens/home/components/featured_plants.dart';
import 'package:plant/screens/home/components/header_with_searchbox.dart';
import 'package:plant/screens/home/components/recommendsplants.dart';
import 'package:plant/screens/home/components/title_with_more_btn.dart';



class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Media Query gives height and width of the screen
    Size size = MediaQuery.of(context).size;
    // Enables scrolling the screen
    return SingleChildScrollView(
      child: Column(
        // ignore: duplicate_ignore
        children: [
          HeaderWithSearchBox(size: size), 
          const TitleWithMoreButton(title: 'Recommended'),  
          RecommendsPlants(),
          TitleWithMoreButton(title: "Featured Plants"),   
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)    
        ],
      ),
    );
  }
}

