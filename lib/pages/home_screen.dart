import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';
import 'package:workshop/core/routes/routes_name.dart';
import 'package:workshop/widgets/starter_app_item.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page',
      style: TextStyle(
        color: AppColor.white
      ),
      ),
      backgroundColor: AppColor.black,
      ),
      backgroundColor: AppColor.bg,
      body: const SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StarterAppItem( routesname: RoutesName.basketApp, titel: 'basketballApp'),
          StarterAppItem( routesname: RoutesName.xo, titel: 'xoApp'),
          StarterAppItem( routesname: RoutesName.calculatorApp, titel: 'calculatorApp'),
          StarterAppItem( routesname: RoutesName.lighterApp, titel: 'lighterApp')
        
        ],
      ),
      )),
    );
  }
}