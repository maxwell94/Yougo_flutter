import 'package:drawer/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] : null),
      home: new LoginPage(),
      // routes: <String,WidgetBuilder> {
      //   "/carte": (BuildContext context) => new Carte(title: "Carte"),
      //   "/historique": (BuildContext context) => new Historique(title: "Historique"),
      //   "/profile": (BuildContext context) => new Profile(title: "Profile"),
      //   "/reservation": (BuildContext context) => new Reservation(title: "Réservation"),
      //   "/portefeuille": (BuildContext context) => new Portefeuille(title: "Portefeuille"), 
      // }
    );
  }
}  