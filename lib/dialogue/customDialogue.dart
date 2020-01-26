import 'package:flutter/material.dart';


class CustomDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return MaterialButton(
      child: Container(
        alignment: Alignment.center,
        child: Image(
             image: new AssetImage("assets/images/offer.png"),
            // height: 92.0,
            // width: 92.0,
            ),
      ),
      onPressed: (){
        Navigator.of(context).pop();
      },
    );
  }
}
