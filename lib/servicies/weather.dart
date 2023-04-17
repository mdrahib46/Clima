import 'package:clima/servicies/location.dart';
import 'package:clima/servicies/networking.dart';

var apiKey = '050755a92ece425111be19708cf3fae1';
var weatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';




class WeatherModel{
  Future<dynamic> getLocationWeather() async{
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper('$weatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition){
    if (condition < 300){
      return '🌩';
    }
    else if (condition < 400){
      return '🌨';
    }
    else if (condition < 600){
      return '☔️';
    }
    else if (condition < 700){
      return '☃️';
    }
    else if (condition < 800){
      return '🌫';
    }
    else if (condition == 800){
      return '☀️';
    }
    else if (condition <= 800){
      return '☁️';
    }
    else{
      return '🤷‍';
    }
  }

  String getMessage(int temp){
    if (temp > 25){
      return 'It\'s 🍦 time';
    }
    else if (temp > 20){
      return 'Time for shorts and 👕';
    }
    else if (temp < 10){
      return 'You\'ll need 🧣 and 🧤';
    }
    else{
      return 'Bring a 🧥 just in case';
    }
  }


}