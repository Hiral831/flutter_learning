import 'package:flutter/material.dart';
class Notifi extends StatelessWidget {
  const Notifi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 250),
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/5786039.jpg'), fit: BoxFit.cover
          )
      ),
      

      child: Center(
        child: Text('Hello Notification',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),),
      ),

    );

  }
}

