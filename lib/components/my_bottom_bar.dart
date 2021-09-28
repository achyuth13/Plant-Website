import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

 AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: (){}, 
      ),
    );
  }


class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.only(left:kDefaultPadding*2,right:kDefaultPadding*2, bottom: kDefaultPadding),
      height:80,
      decoration: BoxDecoration(
        color:Colors.white,
        // ignore: prefer_const_constructors
        boxShadow: [BoxShadow(offset: Offset(0,-10),
        blurRadius: 35,
        color: kPrimaryColor.withOpacity(0.38),

        ),],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/user-icon.svg"))
        ],
      ),
    );
  }
}