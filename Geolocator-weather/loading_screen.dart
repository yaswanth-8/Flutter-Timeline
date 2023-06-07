import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Map<String, dynamic> data = {
    "main": {"temp": "loading"}
  };
  String latitude = 'loading';
  String longtitude = 'loading';
  void getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    latitude = position.latitude.toString();
    longtitude = position.longitude.toString();
    print(position);

    Future<void> fetchData() async {
      final response = await http.get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longtitude&appid=efa9e80a20c8713bdbb5ae4e1f3b29db&units=metric'));
      if (response.statusCode == 200) {
        setState(() {
          data = jsonDecode(response.body);
          print(data);
        });
      } else {
        print('Failed to fetch data');
      }
    }

    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Get the current location
                getLocation();
              },
              child: Text('Get Temperature'),
            ),
            Text("${data['main']['temp']} °C"),
            Text("Position $latitude , $longtitude"),
          ],
        ),
      ),
    );
  }
}
