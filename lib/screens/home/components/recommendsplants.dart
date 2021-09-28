import 'package:flutter/material.dart';
import 'package:plant/constant.dart';


class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Caramel Chutney",
            country: "band",
            // To navigate, use Navigator.push(context, MaterialPageRouter(builder: (context)=>DetailsScreen()))
            price: 805,
            // press: (){
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context)=>const DetailsScreen())
            //   );
            // },
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Ever In Us",
            country: "band",
            price: 805,
            // press: (){
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context)=>const DetailsScreen())
            //   );
            // },
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Zensation",
            country: "band",
            price: 805,
            // press: (){
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context)=>const DetailsScreen())
            //   );
            // },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key, required this.image, required this.title, required this.country, required this.price, 

  }) : super(key: key);

  final String image, title, country;
  final int price;
 
  


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding/2, bottom: kDefaultPadding*2.5),
      width: size.width*0.135,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                boxShadow: [BoxShadow(
                  // ignore: prefer_const_constructors
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                  ),]),
                  child: Row(
                    children: [
                      RichText(text: TextSpan(children: [
                        TextSpan(text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                        TextSpan(text: country.toLowerCase(), style:TextStyle(color: kPrimaryColor.withOpacity(0.5),),),
                      ],),
                      ),
                      // ignore: prefer_const_constructors
                      Spacer(),
                      Text('$price', 
                      style: Theme.of(context).textTheme.button!.copyWith(color:kPrimaryColor))
                    ],) ,
            ),
          )
        ],
      )
    );
  }
}
