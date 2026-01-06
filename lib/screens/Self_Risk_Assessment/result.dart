import 'package:flutter/material.dart';
import 'package:test1/screens/All_menu/screens.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;

    if (resultScore == 10) {
      resultText = 'You Are High Risk User!';
    } else if (resultScore <= 9 && resultScore >= 6) {
      resultText = 'You Are Medium Risk User!';
    } else if (resultScore <= 5) {
      resultText = 'You Are Low Risk User!';
    } else {
      resultText = 'Invalid!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          //      Text(
          //        'Score ' '$resultScore',
          //        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          //        textAlign: TextAlign.center,
          //      ), //Text
          FlatButton(
            child: Text(
              'Back To Main Menu',
            ), //Text
            textColor: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavScreen()),
              );
            },
          ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}

