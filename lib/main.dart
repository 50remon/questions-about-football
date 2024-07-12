import 'package:flutter/material.dart';
import 'package:guastions/Exampage.dart';
import 'package:guastions/guestions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp( Examapp());
}

class Examapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Remon game for sports guestions",),
          centerTitle: true,
          actions: [Icon(Icons.menu),],
        ),
        body: Exampagee(),
      ),
    );
  }
}

