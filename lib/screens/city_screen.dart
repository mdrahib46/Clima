import 'package:clima/utiliies/constants.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 50.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: null,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Get Weather',
                style: kButtonStyel,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
