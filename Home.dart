import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
//import 'package:fluttertoast/fluttertoast.dart';

profileApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black54);

  presssearch() {
    print("Search Pressed");
  }

  pressAccount() {
    print("Account Pressed");
  }

  myPrint() {
    print('Ganesh Kumar !!');
  }

  var myBody = Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade400,
    margin: EdgeInsets.all(15),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          alignment: Alignment.center,
          width: 400,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Ganesh Kumar Kansara',
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.mail),
                  Text(
                    ' Ganesh@gmail.com',
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        color: Colors.black87),
                  ),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: myPrint,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: NetworkImage(
                      'https://www.helpguide.org/wp-content/uploads/man-sitting-clenched-hands-pained-eyes-768.jpg'),
                  fit: BoxFit.cover),
              color: Colors.black87,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: Colors.black45,
                width: 2,
              ),
            ),
            width: 80,
            height: 80,
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Profile Card'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: presssearch),
          IconButton(
              icon: Icon(Icons.account_balance_wallet),
              onPressed: pressAccount),
        ],
      ),
      body: myBody,
    ),
  );
}

widget({Container child}) {}
