import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:geocode/geocode.dart';
import 'package:intl/intl.dart';

class LocationHistory extends StatefulWidget {
  LocationHistory({Key? key, required this.title}) : super(key:key);
  late final String title;

  @override
  _LocationHistoryState createState() => _LocationHistoryState();

}

class _LocationHistoryState extends State<LocationHistory> {

  final database= FirebaseDatabase.instance.reference();
  User? user = FirebaseAuth.instance.currentUser;

  LocationData? currentLocation;
  String address = "";
  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(now);

  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    String uid = user!.uid; // <-- User ID
    final usersRef= database.child(uid);

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('y/M/d ||  Hm ').format(now);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.cyan, Colors.cyanAccent])),            child: Container(
              width: double.infinity,
              height: 150.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(
                          color:Colors.white,
                          width: 3,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      color: Colors.cyanAccent,
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "HISTORY",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "PAGE ",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              width: 350.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                    color:Colors.white,
                    width: 2,
                  ),
                ),
                color: Colors.cyanAccent,
                child: ListTile(
                  title: Text(
                    'Quarantine User Location',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                elevation: 8,
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (currentLocation != null)
                  Text(
                      "Location: ${currentLocation?.latitude}, ${currentLocation?.longitude}",
                  textAlign: TextAlign.center,
                  ),
                if (currentLocation != null) Text("Address: $address",
                textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.cyanAccent),
                  onPressed: () async {
                    try {
                      LocationData? location = await _getLocation();
                      if (location == null) return;

                      String newAddress = await _getAddress(location.latitude, location.longitude);

                      if (!mounted) return;

                      setState(() {
                        currentLocation = location;
                        address = newAddress;
                      });

                      await usersRef.update({
                        'users_location/address': address,
                        'users_location/time': formattedDate,
                      });

                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Location updated!')),
                        );
                      }
                    } catch (error) {
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error: $error')),
                        );
                      }
                    }
                  },
                  child: Text(
                    "Get Location",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            child:Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.replay, color: Colors.black,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
Future<LocationData?> _getLocation() async {
  Location location = Location();
  LocationData _locationData;

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return null;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return null;
    }
  }


  _locationData = await location.getLocation();

  return _locationData;
}

Future<String> _getAddress(double? lat, double? lang) async {
  if (lat == null || lang == null ) return "";
  GeoCode geoCode = GeoCode();
  Address address =
  await geoCode.reverseGeocoding(latitude: lat, longitude: lang);
  return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
}
