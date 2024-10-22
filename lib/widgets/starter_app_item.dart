import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';

class StarterAppItem extends StatelessWidget {
  // final String imagePath;
  final String titel;
  final String routesname;
  const StarterAppItem(
      {super.key,
      // required this.imagePath,
      required this.routesname,
      required this.titel});

  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.all(20),
decoration: BoxDecoration(shape: BoxShape.rectangle,color: AppColor.white),

child: Row(
  children: [
    // Image.asset('assets/images/$imagePath.gpj',width: 70,height: 70,
    // fit: BoxFit.cover,),const 
    Spacer()
  , Text(titel , style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
  const Spacer(),
  InkWell(
    onTap:() => Navigator.pushNamed(context,routesname),
    child: Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(shape: BoxShape.circle,color: AppColor.primary),
      child: Icon(
        size: 30,
        color: AppColor.white,
        Icons.arrow_right
      ),
    ),
  )
,Spacer()
    
  ],
),
    );
  }
}
