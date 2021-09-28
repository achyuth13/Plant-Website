import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constant.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height*0.2,
      // this is the stack, with 2 children
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height*0.2 -27,
            decoration: const BoxDecoration(color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36)
            )
            ),
          child: Row(
            children: [Text('Hi Achyuth!',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
            const Spacer(),
            Image.asset("assets/images/logo.png")
            ],
          ),  
          ),
          // this is the container in front, why are we using Positioned? have to understand that
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0,10.0),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                )
              ]
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(                      
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                SvgPicture.asset("assets/icons/search.svg"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}