import 'package:commercial_app/screens/BackScreen.dart';
import 'package:commercial_app/screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(

          backgroundColor: Colors.red,
          child: Icon(Icons.shopping_cart_outlined, size: 25.0,),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }),
            );
          },
        ),
    body: HomeScreen() ,
    )
    );
  }
}

