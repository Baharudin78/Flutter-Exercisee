import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String massage = " tombol ditekan";
  void tekanTombol() {
    setState(() {
      massage = "tombol sudah diteakan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Container(
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors: <Color>[Colors.yellow, Colors.blueAccent])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(massage),
                RaisedButton(
                  color: Colors.redAccent,
                  child: Text("tekan",style: TextStyle(fontWeight: FontWeight.bold),),
                  onPressed: tekanTombol,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
