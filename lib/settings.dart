import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.black,
      child: Center(
        child: Text(
          'This is settings page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

  }
}
