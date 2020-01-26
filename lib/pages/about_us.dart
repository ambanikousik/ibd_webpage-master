import 'package:flutter/material.dart';

class About_Us extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin:  EdgeInsets.only(top:80.0,left: 40,right: 40,bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.black38,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Text("Who are we?",textAlign: TextAlign.center,style: TextStyle(
              color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold
            ),),
            SizedBox(height: 60,),
            Text("City Online Ltd. is a leading Internet Service Provider and IT solution company in Bangladesh. It is the company of information communication technology to provide the services like Broadband Internet through Fiber to The Home (FTTH) passive optical network technology. This is next generation technology for serve fast, reliable, dedicate and affordable internet service for all level of customer’s.\n\n\nCity Online Ltd. started its journey with aim of providing very high level technology & technical support. The Company has developed with very talented and professional certified IT experts who are creative and forward thinking in their approach. They are always ready to provide proper IT related solution based on client’s demand. City Online Ltd. Believes in quality and services because, quality and service creates its own demand. We assure you of our state of the out service.",
              textAlign: TextAlign.left,style: TextStyle(
                color: Colors.white,fontFamily:"RobotoLight", fontSize: 20,fontWeight:FontWeight.w100
            ),),
          ],
        ),
      ),
    );
  }

}