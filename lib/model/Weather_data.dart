import 'package:futterdayone/model/weather_data_current.dart';
import 'package:futterdayone/model/weather_data_hourly.dart';

class WeatherData{
  final WeatherDataCurrent? current;
  final WeatherDataHourly? hourly;

  WeatherData([this.current,this.hourly]);
// in video [this.current]
WeatherDataCurrent getCurrentWeather()=> current!;
WeatherDataHourly getHourlyWeather()=> hourly!;
}