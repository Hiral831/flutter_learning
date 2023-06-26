// import 'package:flutter/material.dart';
// import 'package:futterdayone/model/weather_data_hourly.dart';
// import 'package:get/get.dart';
//
//
// class HourlyWeather extends StatefulWidget {
//   final WeatherDataHourly weatherDataHourly;
//   const HourlyWeather({Key? key,required this.weatherDataHourly}) : super(key: key);
//
//   @override
//   State<HourlyWeather> createState() => _HourlyWeatherState();
// }
//
// class _HourlyWeatherState extends State<HourlyWeather> {
//
//   Widget hourlylist(){
//     return Container(
//       height: 150,
//       padding: EdgeInsets.only(top:10,bottom: 10),
//       child: ListView.builder(
//         itemCount: widget.weatherDataHourly.hourly.weatherLength > 12 ? 12
//             : widget.weatherDataHourly.hourly.weather.length,
//         itemBuilder: (context, index) {
//
//           return Obx(() => GestureDetector(child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//              boxShadow: [
//                BoxShadow(offset: const Offset(0.5,0),blurRadius: 30,spreadRadius: 1,color: Colors.blue)
//              ],
//              color: Colors.indigoAccent,
//             ),
//             child: HourlyDetails(timests: ,
//                 temp: widget.weatherDataHourly.hourly.[index].temp!,
//                 weatherIcon: weatherIcon
//           ),
//           ),
//           );
//
//         },
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
//           alignment: Alignment.topCenter,
//           child: Text("Today",style: TextStyle(fontSize: 20),),
//         ),
//         hourlylist()
//       ],
//     );
//   }
// }
//
//
// class HourlyDetails extends StatelessWidget {
//   int temp;
//   int timests;
//   String weatherIcon;
//    HourlyDetails({Key? key,required this.timests,required this.temp,required this.weatherIcon}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
