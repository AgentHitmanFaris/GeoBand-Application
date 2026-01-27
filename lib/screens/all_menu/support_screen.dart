import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class supportscreen extends StatefulWidget {
  @override
  _supportscreen createState() => _supportscreen();
}

class _supportscreen extends State<supportscreen> {
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
                      color: Colors.white,
                      elevation: 5.0,
                      child: Container(
                        color: Colors.cyanAccent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 22.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "SUPPORT ",
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "PAGE ",
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
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
            child: SizedBox(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(
                    color:Colors.white,
                    width: 2,
                  ),
                ),
                shadowColor: Colors.black,
                color: Colors.cyanAccent,
                child: ListTile(
                  title: Text(
                    'OUR CONTACT',
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
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              Container(
                child: SizedBox(
                  height: 60.0,
                  width: 450.0,
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
                      leading:  Container(
                          child: IconButton(icon: Icon(
                              Icons.email,
                            color: Colors.black,
                          ), onPressed: () => {
                          launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing'),
                          },)
                      ),
                      title: Container(
                        height: 20.0,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Brokenbulb@gmail\n',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
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
                  width: 450.0,
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
                      leading:  Container(
                          child: IconButton(icon: Icon(
                            Icons.phone_forwarded,
                            color: Colors.black,
                          ), onPressed: () => {
                            launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing'),
                          },)),
                      title: Container(
                        height: 20.0,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '012-3456789 or 088-45637\n',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
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
                  width: 450.0,
                  child: Card(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width:10.0),
                        Container(
                          height: 20.0,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Media Social:\n',
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing');
                          },
                          child:  CircleAvatar(
                            radius: 20.0,
                            backgroundImage: ExactAssetImage("asset/IG.png"),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing');
                          },
                          child:  CircleAvatar(
                            radius: 20.0,
                            backgroundImage: ExactAssetImage("asset/FB.png"),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing');                          },
                          child:  CircleAvatar(
                            radius: 20.0,
                            backgroundImage: ExactAssetImage("asset/TWT.png"),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing');                          },
                          child:  CircleAvatar(
                            radius: 20.0,
                            backgroundImage: ExactAssetImage("asset/WS.png"),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        GestureDetector(
                          onTap: () {
                            launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing');                          },
                          child:  CircleAvatar(
                            radius: 20.0,
                            backgroundImage: ExactAssetImage("asset/MSSG.png"),
                          ),
                        ),
                      ],
                    ),
                    elevation: 8,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: SizedBox(
              height: 60.0,
              width: 500.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color:Colors.white,
                    width: 2,
                  ),
                ),
                color: Colors.redAccent,
                child: ListTile(
                  title: Text(
                    'INCASE OF EMERGENCY, PLEASE DIAL 999!!!!!',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                elevation: 8,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                height: 70,
                width: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color:Colors.white,
                      width: 1,
                    ),
                  ),
                  color: Colors.cyanAccent,
                  child: TextButton(
                    onPressed: () {
                      launch('https://docs.google.com/document/d/1a56AAvq4sK_SotrrJ14QGPs3F7xJM0WXK4bDZ5tH0vU/edit?usp=sharing');
                    },
                    child: ListTile(
                      title: Text(
                        'FREQUENTLY ASKED QUESTIONS',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  elevation: 8,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color:Colors.white,
                    width: 1,
                  ),
                ),
                color: Colors.cyanAccent,
                child: SizedBox(
                  height: 62,
                  width: 200,
                  child: TextButton(
                    onPressed: (){
                      launch('https://docs.google.com/forms/d/e/1FAIpQLSdFZLMtv9GsA2f7b2zn3FvBLM89zU-zuyvmsNgiITHVLFFWKg/viewform?usp=pp_url');
                    },
                    child: ListTile(
                      title: Text(
                        'FEEDBACK SUBMISSION',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                elevation: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


