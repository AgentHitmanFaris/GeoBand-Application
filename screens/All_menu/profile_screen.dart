import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class profilescreen extends StatefulWidget {
  @override
  _profilescreen createState() => _profilescreen();
}

class _profilescreen extends State<profilescreen> {


  @override
  Widget build(BuildContext context) {


  User? user = FirebaseAuth.instance.currentUser;
  String uid = user!.uid; // <-- User ID
  final database = FirebaseDatabase.instance.reference().child(uid).child("users_id").child("username").once();
  final Future<FirebaseApp> _future = Firebase.initializeApp();


    return Scaffold(
      body: FutureBuilder(
        future: _future,
      builder: (context, AsyncSnapshot snapshot){
      if (snapshot.hasError) {
        return Text(snapshot.error.toString());
      }if (snapshot.hasData) {
        final name= snapshot.data.toString();
       return Column(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.cyan, Colors.cyanAccent])),
                child: Container(

                  width: double.infinity,
                  height: 260.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "asset/default profile picture.png",
                          ),
                          radius: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Daniel",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 22.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        " ",
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        " ",
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "#Esp 006D3D",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Unique ID",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "",
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        " ",
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Container(
              width: 300.0,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Personal Info:",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Name: Daniel.\n'
                          'IC Number: 00000000000. \n'
                          'Phone Number: 0123456789. \n'
                          'State: Sabah. \n'
                          'District: Kota Kinabalu. \n',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      "User Status:",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Non-Quarantined User.\n'
                          'Low Risk User. \n',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        );
      };
      return Text('Data : ${snapshot}');
      },
      ),
    );
  }
}
