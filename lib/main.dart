



import 'package:flutter/material.dart';
import 'package:futterdayone/forgetpassword.dart';
import 'package:futterdayone/home.dart';

import 'package:futterdayone/login_screen.dart';
import 'package:futterdayone/notif.dart';
import 'package:futterdayone/registration_screen.dart';
import 'package:futterdayone/Weathr.dart';
import 'package:get/route_manager.dart';
import 'package:firebase_core/firebase_core.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(

   );

    runApp(



      GetMaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: "login",
    routes: {"login" : (context)=> LoginScreen(),
      'register': (context) =>RegistrationScreen(),
      'forgetpassword': (context)=> Mypass(),
      'home': (context)=> Myhome(),
      'notif':(context)=> Notifi(),
      'Weathr': (context)=> Weathr()

    } ,

  ));
}

