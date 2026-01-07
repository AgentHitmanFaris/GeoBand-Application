import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactus extends StatefulWidget {
  @override
  _contactus createState() => _contactus();
}

class _contactus extends State<contactus> {
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
                                  "CONTACT-US",
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
                  'Contact Number',
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
              height: 60.0,
              width: 300.0,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 30.0,
                    color: Colors.green,
                  ),onTap: () => {
                  launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing'),
                },
                  title: Text(
                    'Company Number:\n'
                    '012-3456789\n',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
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
              height: 60.0,
              width: 300.0,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 30.0,
                    color: Colors.green,
                  ),onTap: () => {
                  launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing'),
                },
                  title: Text(
                    'Hotline Number:\n'
                    '088-45678\n',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
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
