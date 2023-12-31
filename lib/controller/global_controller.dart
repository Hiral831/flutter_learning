import 'package:futterdayone/api/fetch_weather.dart';
import 'package:futterdayone/model/Weather_data.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController{
  // created variables
  final RxBool _isLoading = true.obs;
  final RxDouble _lattitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;

// created instances
  RxBool CheckLoading() => _isLoading;
  RxDouble getLattitue() => _lattitude;
  RxDouble getLongitude() => _longitude;



  final weatherData = WeatherData().obs;

  WeatherData getWeatherdata(){
     return weatherData.value;
}

  @override
  void onInit() {
   if(_isLoading.isTrue){
     geoLocation();
   }
    super.onInit();
  }

  geoLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!isServiceEnabled){
      return Future.error("Location not enabled");
    }

    locationPermission = await Geolocator.checkPermission();
    if(locationPermission==LocationPermission.deniedForever){
      return Future.error("Location permission are denied forever");
    } else if(locationPermission==LocationPermission.denied){

      locationPermission = await Geolocator.requestPermission();
      if(locationPermission==LocationPermission.denied){
        return Future.error("Location is denied");
      }

    }

    // get current posoiton of user
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
    .then((value) => {
      // update latitude and _longitude

      _lattitude.value = value.latitude,
      _longitude.value = value.longitude,

      // calling our api
        FetchWeatherAPI().processData(value.latitude,value.longitude).then((value) =>
              { weatherData.value = value,
            _isLoading.value = false,

          }

    )


    });

  }

}