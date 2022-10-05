import 'package:flutter/material.dart';
import 'package:test1/screens/anak2_history/date_history.dart';
import 'package:test1/screens/anak2_history/dependent_history.dart';
import 'package:test1/screens/anak2_history/distance_violation.dart';
import 'package:test1/screens/anak2_history/location_history.dart';

class historyscreen extends StatefulWidget {
  @override
  _historyscreen createState() => _historyscreen();
}

class _historyscreen extends State<historyscreen> {
  @override
  Widget build(BuildContext context) {
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
          SizedBox(
            height: 20.0,
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
                    'DETAILED HISTORY',
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
          Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color:Colors.white,
                    width: 1,
                  ),
                ),
                color: Colors.cyanAccent,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => datehistory()),
                    );
                  },
                  child: SizedBox(
                    width: 200, // <-- Your width
                    height: 47, // <-- Your height
                    child: ListTile(
                      title: Text(
                        'QUARANTINE STATUS',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                elevation: 8,
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color:Colors.white,
                    width: 1,
                  ),
                ),
                color: Colors.cyanAccent,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => dependenthistory()),
                    );
                  },
                  child: SizedBox(
                    width: 200, // <-- Your width
                    height: 47, // <-- Your height
                    child: ListTile(
                      title: Text(
                        'DEPENDENT HISTORY',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,                        ),
                      ),
                    ),
                  ),
                ),
                elevation: 8,
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
          Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color:Colors.white,
                    width: 1,
                  ),
                ),
                color: Colors.cyanAccent,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => locationhistory(title: '',)),
                    );
                  },
                  child: SizedBox(
                    width: 200, // <-- Your width
                    height: 47, // <-- Your height
                    child: ListTile(
                      title: Text(
                        'LOCATION',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,                        ),
                      ),
                    ),
                  ),
                ),
                elevation: 8,
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color:Colors.white,
                    width: 1,
                  ),
                ),
                color: Colors.cyanAccent,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => distancelocation()),
                    );
                  },
                  child: SizedBox(
                    width: 200, // <-- Your width
                    height: 47, // <-- Your height
                    child: ListTile(
                      title: Text(
                        'DISTANCE VIOLATION',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,                        ),
                      ),
                    ),
                  ),
                ),
                elevation: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
