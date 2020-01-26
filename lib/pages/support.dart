import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 40.0, bottom:40.0, left: 100.0, right: 100.0),
      child: Card(
        color: Colors.white30,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40.0)),
        elevation: 5.0,
        child: Container(
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width /3.3,
                height: MediaQuery.of(context).size.height,
                color: Colors.yellowAccent,
                child: Padding(
                  padding: EdgeInsets.only(top: 70.0, right: 50.0, left: 50.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/images/logo.png",height:100,),
                        SizedBox(height: 40.0,),

                        Container(
                          padding: EdgeInsets.only(
                              top: 5.0,
                              bottom: 5.0
                          ),
                          child: Text(
                            "Call Us",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(
                              top: 5.0,
                              bottom: 5.0
                          ),
                          child: Text(
                            "We have 24/7 support for you",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/contact.png",width:680,),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
