import 'package:flutter/material.dart';
import 'package:flutter_webpage/dialogue/customDialogue.dart';

class homepage extends StatelessWidget {
  final BuildContext context;
  homepage(this.context);


  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40,),
            Text(
              "Fast & \nReliable",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Dedicated Broadband Internet",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => CustomDialog(),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  "Our Offer",
                  style: TextStyle(fontSize:20,color:Color.fromRGBO(0, 0, 51, 1.0),fontWeight:FontWeight.w900),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset(
          "assets/images/wifi.png",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:60,left:40,right:40),
      child: LayoutBuilder(
        builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren(constraints.biggest.width / 2),
            );
        },
      ),
    );
  }
}
