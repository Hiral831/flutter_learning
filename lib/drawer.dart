import 'package:flutter/material.dart';
import 'package:futterdayone/privacy.dart';
import 'package:futterdayone/settings.dart';
class MyDrawer extends StatelessWidget {
  // const MyDrawer({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
      child: Material(
        color: Colors.green,

        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 40,),
            buildMenuItem(
              text : "Logout",
              icon : Icons.privacy_tip_rounded,
              onClicked: () => selectedItem(context, 0),
            ),

            Divider(color: Colors.white),
              //
              // const SizedBox(height: 40,),
              buildMenuItem(
                text : "Settings",
                icon : Icons.settings,
                onClicked: () => selectedItem(context, 1),
              ),


          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }){
    final color= Colors.white;

    return ListTile(
      leading: Icon(icon,color: color,size: 28,),
      title: Text(text, style: TextStyle(color: color,fontSize: 25)),
      onTap: onClicked,
    );

  }
  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Logout(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Settings(),
        ));
        break;
    }
  }



}

