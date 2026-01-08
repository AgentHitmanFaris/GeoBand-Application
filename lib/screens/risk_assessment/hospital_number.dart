import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class hospitalnumber extends StatefulWidget {
  @override
  _hospitalnumber createState() => _hospitalnumber();
}

class _hospitalnumber extends State<hospitalnumber> {
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
                    colors: [Colors.cyan, Colors.cyanAccent])),
            child: Container(
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "ENQUIRIES",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "PAGE ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
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
                  'Nearby Hospital',
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
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: SizedBox(
              height: 155.0,
              width: 500.0,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 100.0,
                  ), onTap: () => {
                  launch('https://hqe2.moh.gov.my/v2/'),
                },
                  title: Text(
                    'Hospital Queen Elizabeth II, Lorong Bersatu, Off Jalan Damai Luyang, 88300 Kota Kinabalu, SABAH, MALAYSIA\n'
                    '088-324600\n'
                    '088-272454\n'
                    'hqe.2@moh.gov.my\n'
                    'hqe2.moh.gov.my\n',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                elevation: 8,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child:Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
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
