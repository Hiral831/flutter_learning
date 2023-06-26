class WeatherDataHourly{
  final Hourly  hourly;
  WeatherDataHourly({required this.hourly});
  factory WeatherDataHourly.fromJson(Map<String,dynamic>json)=>
      WeatherDataHourly(hourly: Hourly.fromJson(json['hourly']));

}





class Hourly {
  // List<Weather> get weatherList => weather;
  // int get length => weather.length;
  //
  Hourly({
    required this.dt,
    required this.temp,

    required this.weather,

  });
  late final int dt;
  late final int temp;

  late final List<Weather> weather;
  List<Weather> get weatherList => weather;
  // int get length => weather.length;



  Hourly.fromJson(Map<String, dynamic> json){
    dt = json['dt'];
    temp = (json['temp'])?.round();


    weather = List.from(json['weather']).map((e)=>Weather.fromJson(e)).toList();



  }
  int get weatherLength => weather.length;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};

    _data['dt'] = dt;
    _data['temp'] = temp;
    _data['weather'] = weather.map((e)=>e.toJson()).toList();
    _data['length']= weatherLength;

    return _data;
  }
}

class Weather {

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
  late final int id;
  late final String main;
  late final String description;
  late final String icon;

  Weather.fromJson(Map<String, dynamic> json){
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['main'] = main;
    _data['description'] = description;
    _data['icon'] = icon;
    return _data;
  }
}
