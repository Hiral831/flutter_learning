import 'package:flutter/material.dart';
import 'package:futterdayone/controller/global_controller.dart';
import 'package:get/get.dart';
import 'package:futterdayone/widgets/header.dart';
import 'package:futterdayone/widgets/currentweatherwid.dart';
import 'package:futterdayone/widgets/hourlydatawid.dart';

class Weathr extends StatefulWidget {
  const Weathr({Key? key}) : super(key: key);

  @override
  State<Weathr> createState() => _WeathrState();
}

class _WeathrState extends State<Weathr> {
  final GlobalController globalController =
  Get.put(GlobalController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Obx(() => globalController.CheckLoading().isTrue ?const Center(
          child: CircularProgressIndicator(),
        ) : Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(height:20),
              const HeaderWidget(),
              // for our current temperature
              CurrentWeather(weatherDataCurrent: globalController.getWeatherdata().getCurrentWeather(),),
              SizedBox(height: 10,),
              // HourlyWeather(weatherDataHourly: globalController.getWeatherdata().getHourlyWeather(),),
            ],
          ),
        )),
      ),
    );
  }
}
