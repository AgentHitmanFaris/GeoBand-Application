import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class addDependent extends StatefulWidget {
  @override
  _addDependent createState() => _addDependent();
}

class _addDependent extends State<addDependent> {
  final _formKey = GlobalKey<FormState>();

  final database= FirebaseDatabase.instance.reference();
  User? user = FirebaseAuth.instance.currentUser;

  TextEditingController DependentNameController = new TextEditingController();
  TextEditingController DependentClassController = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    String uid = user!.uid; // <-- User ID
    final usersRef= database.child(uid);


    return Scaffold(
      appBar: AppBar(
        title: Text("Dependent Management"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: DependentNameController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter Dependents Name',
                                  ),
                                  onSaved: null,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: DependentClassController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter Dependents Class',
                                  ),
                                  onSaved: null,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  color: Colors.cyanAccent,
                                  child: Text("Add!"),
                                  onPressed: () async {
                                    await usersRef.update({
                                      'users_dependent/name' : DependentNameController.text,
                                      'users_dependent/class' : DependentClassController.text,
                                    }).catchError((error)=> print('You get an error! $error'));
                                    print('User Added!');
                                        Navigator.pop(context);
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text("Adding Dependent"),
        ),
      ),
    );
  }


}