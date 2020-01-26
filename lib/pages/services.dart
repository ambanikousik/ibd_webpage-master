import 'package:flutter/material.dart';



class Support extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blueGrey.withOpacity(0.3),
      ),
      padding: EdgeInsets.only(left: 40,right: 40),
      child: Image.asset(
        "assets/images/city_features.png",
        // width: width,
      ),
    );
  }

}
