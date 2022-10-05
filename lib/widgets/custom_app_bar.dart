import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/screens/login/login_screen.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.cyanAccent,
      elevation: 0.0,
       leading:
       IconButton(
         icon: const Icon(Icons.login_rounded),
         iconSize: 28.0,
         color: Colors.black,
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => LoginScreen()),
           );
         },
       ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}