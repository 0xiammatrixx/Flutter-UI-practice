import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class LocatorWidget extends StatefulWidget {
  const LocatorWidget({super.key});

  @override
  State<LocatorWidget> createState() => _LocatorWidgetState();
}

class _LocatorWidgetState extends State<LocatorWidget> {
  Position? position;

  Future<void> fetchposition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location Service is Disabled');
      return;
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'You denied location permission');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'You denied location permission Forever');
      return;
    }

    try { 
      Position currentposition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      position = currentposition;
    });
  } catch (e) {
    Fluttertoast.showToast(msg: 'Error fetching location: $e');
  }
  }

@override
  void initState() {
  super.initState();
  fetchposition();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoLocator'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position == null ? 'Location' : position.toString()),
            ElevatedButton(
                onPressed: () {
                  fetchposition();
                },
                child: Text('Show Location'))
          ],
        ),
      ),
    );
  }
}
