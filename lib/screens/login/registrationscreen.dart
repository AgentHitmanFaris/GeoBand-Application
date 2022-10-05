import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/All_menu/bottom_nav_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreen createState() => _RegistrationScreen();
}

class _RegistrationScreen extends State<RegistrationScreen> {

  final database= FirebaseDatabase.instance.reference();
  User? user = FirebaseAuth.instance.currentUser;



  TextEditingController usernameController = new TextEditingController();
  TextEditingController icController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController stateController = new TextEditingController();
  TextEditingController districtController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    String uid = user!.uid; // <-- User ID
    final usersRef= database.child(uid);


  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: <Color>[
          Colors.purpleAccent,
          Colors.cyanAccent,
        ], // red to yellow
        tileMode: TileMode.repeated, // repeats the gradient over the canvas
      ),
    ),

    child: Material(
      color: Colors.transparent,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Username',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    child: TextField(
                      controller: icController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Identification Number',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        labelText: 'IC Number',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onSubmitted: (String? ic) {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Phone Number',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onSubmitted: (String? phone) {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    child: TextField(
                      controller: stateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your state',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        labelText: 'State',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onSubmitted: (String? state) {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    child: TextField(
                      controller: districtController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your District',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        labelText: 'District',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onSubmitted: (String? district) {},
                    ),
                  ),
                  Center(
                    child: Padding(padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed:() async {
                             await usersRef.update({
                             'users_id/username' : usernameController.text,
                             'users_id/ic' : icController.text,
                             'users_id/phone': phoneController.text,
                             'users_id/state': stateController.text,
                             'users_id/district': districtController.text,
                             }).catchError((error)=> print('You get an error! $error'));
                             print('User Added!');
                             await Navigator.pushReplacement(
                                 context, MaterialPageRoute(builder: (_) => BottomNavScreen()));

                          },
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.white, fontSize: 15, letterSpacing: 1.0,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
  );
  }
}
