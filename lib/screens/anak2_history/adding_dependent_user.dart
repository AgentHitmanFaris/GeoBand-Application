import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddDependent extends StatefulWidget {
  @override
  _AddDependentState createState() => _AddDependentState();
}

class _AddDependentState extends State<AddDependent> {
  final _formKey = GlobalKey<FormState>();

  final database= FirebaseDatabase.instance.reference();
  User? user = FirebaseAuth.instance.currentUser;

  TextEditingController DependentNameController = TextEditingController();
  TextEditingController DependentClassController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    String uid = user!.uid; // <-- User ID
    final usersRef= database.child(uid);


    return Scaffold(
      appBar: AppBar(
        title: Text("Dependent Management"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Stack(
                      clipBehavior: Clip.none,
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
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.cyanAccent),
                                  child: Text("Add!"),
                                  onPressed: () async {
                                    try {
                                      await usersRef.update({
                                        'users_dependent/name' : DependentNameController.text,
                                        'users_dependent/class' : DependentClassController.text,
                                      });
                                      if (mounted) {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('User Added!')),
                                        );
                                        Navigator.pop(context);
                                      }
                                    } catch (error) {
                                      if (mounted) {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Error: $error')),
                                        );
                                      }
                                    }
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
