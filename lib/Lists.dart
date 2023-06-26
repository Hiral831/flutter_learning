import 'package:flutter/material.dart';
import 'package:futterdayone/user.dart';
class Listt extends StatelessWidget {
  const Listt({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
       body: ListView.builder(
        itemCount: users.length,
        itemBuilder : ( BuildContext context, int index ){
          return
            ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                users[index].image,
              ),
            ),
            title: Text(users[index].name),
            subtitle:Text(users[index].profession),
          );

        }

      ),


    );
  }
}
