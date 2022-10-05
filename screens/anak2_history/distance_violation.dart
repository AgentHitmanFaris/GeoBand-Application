import 'package:flutter/material.dart';

class distancelocation extends StatefulWidget {
  @override
  _distancelocation createState() => _distancelocation();
}

class _distancelocation extends State<distancelocation> {
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
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(300),
                side: BorderSide(
                  color:Colors.white,
                  width: 1,
                ),
              ),
              color: Colors.cyanAccent,
              child: ListTile(
                title: Text(
                  'User Distance Violation',
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
            height: 10.0,
          ),
          Container(
            child: SizedBox(
              height: 70.0,
              width: 300.0,
              child: Card(
                color: Colors.green,
                child: ListTile(
                  title: Text(
                    'Date: 1st August 2021\n'
                    'Status: No Violation\n',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                elevation: 8,
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 70.0,
              width: 300.0,
              child: Card(
                color: Colors.green,
                child: ListTile(
                  title: Text(
                    'Date: 1st August 2021\n'
                    'Status: No Violation\n',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                elevation: 8,
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 70.0,
              width: 300.0,
              child: Card(
                color: Colors.red,
                child: ListTile(
                  title: Text(
                    'Date: 1st August 2021\n'
                    'Status: Violation Detected\n',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
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
              child: ButtonTheme(
                buttonColor: Colors.white,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.replay, color: Colors.black,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
