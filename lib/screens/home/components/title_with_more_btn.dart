import 'package:flutter/material.dart';
import '../../../constant.dart';



class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          // ignore: prefer_const_constructors
          Spacer(),
          // ignore: deprecated_member_use
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: () {},
            child: const Text("More",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding/4),
            // ignore: prefer_const_constructors
            child: Text(text, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,),
              ),
          ),
          Positioned(
            bottom:0,
            left:0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding/4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      )
      );
  }
}

