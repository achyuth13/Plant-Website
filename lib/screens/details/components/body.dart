// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/constant.dart';
import 'package:plant/screens/details/components/icon_card.dart';
import 'package:plant/screens/details/components/images_and_icons.dart';
import 'package:plant/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: 'Achyuth',
            country: 'India',
            price: 500,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width:size.width/2,
                height: 84,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
                  color: kPrimaryColor,
                  onPressed: (){}, child: Text("Buy Now!",style: TextStyle(color: Colors.white,fontSize: 16,),),
              )
              ),
              Expanded(child: 
               // ignore: deprecated_member_use
               FlatButton(onPressed: (){}, child: Text("Description"))
              )
            ],
          ),
        ],
      ),
    );
  }
}

