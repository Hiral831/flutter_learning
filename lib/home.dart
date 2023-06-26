import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futterdayone/Weathr.dart';
import 'package:futterdayone/drawer.dart';
import 'package:futterdayone/Lists.dart';
import 'package:futterdayone/Images.dart';
import 'package:futterdayone/dice.dart';
import 'package:futterdayone/shoppingscreen.dart';


class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  // AppBar _buildAppBar(){
  //   return AppBar(
  //
  //   );
  // }

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  int  currentIndex = 0;
  final screens=[
    Img(),
    // Center(child: Text('No Data Found',style: TextStyle(fontSize: 60),),),
    Dicedshuffle(),
    Shoppingscreen(),
    // Center(child: Text('Nooo Data Found',style: TextStyle(fontSize: 60),),),
    Weathr(),
    Listt()
  ];
  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/5786039.jpg'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,

          title: Text("Hiral Borad",style: TextStyle(color: Colors.deepPurple, fontSize: 27,fontWeight: FontWeight.bold )) ,
          backgroundColor: Colors.transparent,
          // leading: IconButton(
          //   icon: Icon(Icons.dehaze,color: Colors.black87,size:29 ),
          //   onPressed: () => Scaffold.of(context).openDrawer(),
          // ),
          actions: <Widget>[
            IconButton(onPressed: ()
            { Navigator.pushNamed(context, 'notif');},
                icon: Icon(Icons.notifications_active,color: Colors.white,size:29))
          ],


        ),
        drawer: MyDrawer(),
        backgroundColor: Colors.transparent,
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(


          currentIndex: currentIndex,
          onTap: (index) => setState( () => currentIndex = index),
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.deepPurple,
          iconSize: 25,
          showUnselectedLabels: false,
          items: [
            // currentIndex=0,
            BottomNavigationBarItem(icon: Icon(Icons.image),
            label: "Images",
            backgroundColor: Colors.lightGreen

          ),
            BottomNavigationBarItem(icon: Icon(Icons.language_sharp),
                label: "Add",
                backgroundColor: Colors.lightGreen

            ),
            BottomNavigationBarItem(icon: Icon(Icons.add_a_photo),
                label: "Camera",
                backgroundColor: Colors.lightGreen

            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),
                label: "Likes",
                backgroundColor: Colors.lightGreen

            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),
                label: "Profile",
                backgroundColor: Colors.lightGreen

            ),

        ],

        ),

      ),);
  }
  }
