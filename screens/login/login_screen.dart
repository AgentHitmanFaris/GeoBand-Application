import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/All_menu/bottom_nav_screen.dart';
import 'package:test1/screens/login/forgot_password.dart';
import 'package:test1/screens/login/sign_up.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _auth = FirebaseAuth.instance;


  //text field state
  String email= '';
  String password = '';

  @override
  Widget build(BuildContext context) {
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
       child: Scaffold(
         backgroundColor: Colors.transparent,
        body: Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: double.infinity,
            width: 430.0,
            child: Card(
              color: Colors.black.withOpacity(0.6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 200,
                              height: 150,
                              child:  CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 60.0,
                                child: CircleAvatar(
                                  radius: 72.0,
                                  backgroundImage: ExactAssetImage("asset/GBL.jpeg"),
                                ),
                              ),),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 35,

                                      alignment: Alignment.center,
                                      child: Text(
                                        'BandTracker\n',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 35,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'BrokenBulb\n',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 2,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text('LOGIN',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email,
                            color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintText: 'Enter a valid email',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                        onChanged: (val){
                          setState(() => email = val);

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password,
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintText: 'Enter a secure password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                        onChanged: (val){
                          setState(() => password = val);
                        },
                      ),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (_) => Forgotpassword()));
                      },
                      child: Text(
                        'Forgot Your Password?',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.black, borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        onPressed: () async {
                          try{
                            await _auth.signInWithEmailAndPassword(
                                email: email, password: password);

                          }
                          on FirebaseAuthException catch (e){

                          }




                        await  Navigator.push(
                              context, MaterialPageRoute(builder: (_) => BottomNavScreen()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2.0,),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'New user?\n',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        TextSpan(
                            text: 'Create An Account Now!',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                    context, MaterialPageRoute(builder: (_) => Signup()));
                              }),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

    ),
     );
  }
}
