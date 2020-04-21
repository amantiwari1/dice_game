import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int left = 4;
  int right = 2;
  var random = new Random();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: (){
                       setState(() {
                         left = random.nextInt(5);
                         right = random.nextInt(5);
                         print(left);
                       });
                      },
                      child: Image.asset('images/dice$left.png')),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: (){
                        setState(() {
                          right = random.nextInt(5);
                          left = random.nextInt(5);
                          print(right);
                        });
                      },
                      child: Image.asset('images/dice$right.png')),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(child: Text("Dicee")),
          ),
        ));
  }
}













