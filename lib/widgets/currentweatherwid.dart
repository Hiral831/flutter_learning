import 'package:flutter/material.dart';
import 'package:futterdayone/model/weather_data_current.dart';
class CurrentWeather extends StatefulWidget {

  final WeatherDataCurrent weatherDataCurrent;

  const CurrentWeather({Key? key,required this.weatherDataCurrent}) : super(key: key);

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {

  Widget   currentWeatherMoreDetailsWidget(){
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(16),
              decoration:  BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/windspeed.png"),
            ),
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(16),
              decoration:  BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/clouds.png"),
            ),
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(16),
              decoration:  BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("assets/icons/humidity.png"),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
              width: 60,
              child: Text(
                "${widget.weatherDataCurrent.current.windSpeed}km/h",
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 60,
              child: Text(
                "${widget.weatherDataCurrent.current.clouds}%",
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 60,
              child: Text(
                "${widget.weatherDataCurrent.current.humidity}%",
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      ],


    );

  }

  Widget  temperatureAreaWidget(){


    return Row(
      children: [
        Image.asset(
          "assets/weather/${widget.weatherDataCurrent.current.weather![0].icon}.png",
          height: 60,
          width: 90,
        ),
        // Container(
        //   height: 60,
        //   width: 1,
        //   color: Colors.indigo,
        // ),
        SizedBox(
          width: 110,
        ),
        RichText(text: TextSpan(
          children: [
            TextSpan(
              text: "${widget.weatherDataCurrent.current.temp.toInt()}°",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 45,

              )
            ),
            TextSpan(
                text: "${widget.weatherDataCurrent.current.weather![0].description}",
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                  fontSize: 10,

                )
            )
          ]
        ))
      ],


    );

  }

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      temperatureAreaWidget(),
      currentWeatherMoreDetailsWidget()
    ],


    );
  }
}

// Widget   currentWeatherMoreDetailsWidget(){
//   return Container(
//
//
//   );
//
// }
//
// Widget  temperatureAreaWidget(){
//
//
//     return Row(
//       children: [
//         Image.asset(
//           "assets/weather/${widget.weatherDataCurrent.current.weather![0].icon}.png",
//         )
//       ],
//
//
//     );
//
// }
