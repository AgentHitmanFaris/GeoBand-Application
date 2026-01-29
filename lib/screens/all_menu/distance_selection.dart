import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class distanceselect extends StatefulWidget {
  @override
  _distanceselect  createState() => _distanceselect ();
}

class _distanceselect  extends State<distanceselect > {
  final _formKey = GlobalKey<FormState>();

  final database= FirebaseDatabase.instance.reference();
  User? user = FirebaseAuth.instance.currentUser;

  TextEditingController DependentNameController = TextEditingController();
  TextEditingController DependentClassController = TextEditingController();
  bool _checkbox = false;
  bool _checkbox1 = false;
  bool _checkbox2 = false;


  @override
  Widget build(BuildContext context) {

    String uid = user!.uid; // <-- User ID
    final usersRef= database.child(uid);


    return Scaffold(
      appBar: AppBar(
        title: Text("Distance Select"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return AlertDialog(
                        content: Stack(
                          clipBehavior: Clip.none,
                          children: <Widget>[
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('User Distance Selection',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                CheckboxListTile(
                                  title: Text('1.0 Meter'),
                                  value: _checkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkbox = !_checkbox;
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                                ),
                                CheckboxListTile(
                                  title: Text("2.0 Meter"),
                                  value: _checkbox1,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkbox1 = !_checkbox1;
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.leading,
                                ),
                                CheckboxListTile(
                                  title: Text('3.0 Meter'),
                                  value: _checkbox2,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkbox2 = !_checkbox2;
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity.leading,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                });
          },
          child: Text("Distance Selection"),
        ),
      ),
    );
  }


}