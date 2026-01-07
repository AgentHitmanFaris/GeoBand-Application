import 'package:flutter/material.dart';

class sraresult extends StatefulWidget {
  @override
  _sraresult createState() => _sraresult();
}

class _sraresult extends State<sraresult> {


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
                    colors: [Colors.cyan, Colors.cyanAccent]
                )
            ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "SELF RISK ASSESSMENT",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "RESULT HISTORY ",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                  textAlign: TextAlign.center,
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
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(
                  color:Colors.white,
                  width: 1,
                ),
              ),
              color: Colors.cyanAccent,
              child: ListTile(
                title: Text('User Result',
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
              height: 80.0,
              width: 300.0,
              child: Card(
                color: Colors.lightGreenAccent,
                child: ListTile(
                  title: Text('Date: 1st July 2021\n'
                      'Result: Low Risk\n'
                      'Valid Until: 14th July 2021\n',
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
              height: 80.0,
              width: 300.0,
              child: Card(
                color: Colors.redAccent,
                child: ListTile(
                  title: Text('Date: 14th July 2021\n'
                      'Result: High Risk\n'
                      'Valid Until: 28th July 2021\n',
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
              height: 80.0,
              width: 300,
              child: Card(
                color: Colors.orangeAccent,
                child: ListTile(
                  title: Text('Date: 1st August 2021\n'
                  'Result: Medium Risk\n'
                    'Valid Until: 14th August 2021\n',
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
            height:30.0,
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
