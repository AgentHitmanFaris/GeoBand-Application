import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatefulWidget {
  final String fullName;
  final String ic;
  final String phone;
  final String state;
  final String district;
  AddUser(this.fullName, this.ic, this.phone, this.state, this.district);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() async {
      try {
        // Call the user's CollectionReference to add a new user
        await users.add({
          'full_name': widget.fullName, // John Doe
          'ic-number': widget.ic, // Stokes and Sons
          'phone_number': widget.phone,
          'state': widget.state,
          'district': widget.district,
        });

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('User Added')),
          );
        }
      } catch (error) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Failed to add user: $error')),
          );
        }
      }
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}
