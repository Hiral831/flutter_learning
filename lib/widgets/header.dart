import 'package:flutter/material.dart';
import 'package:futterdayone/controller/global_controller.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String city = "";
  String date = DateFormat("yMMMd").format(DateTime.now());
  final GlobalController globalController =
  Get.put(GlobalController(),permanent: true);

  @override
  void initState(){
    getaddress(globalController.getLattitue().value,globalController.getLongitude().value);
    super.initState();
  }

  getaddress(lat,lon) async{
    List<Placemark> placemark = await placemarkFromCoordinates(lat,lon);
    Placemark place = placemark[0];
    setState(() {
      city = place.locality!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
        alignment: Alignment.topLeft,
        child: Text(city, style: TextStyle(fontSize: 21,height: 2,fontWeight: FontWeight.w400),),
      ),
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          alignment: Alignment.topLeft,
          child: Text(date, style: TextStyle(fontSize: 12,height: 1.5,
              color: Colors.indigoAccent),),
        ),
    ]

    );
  }
}
