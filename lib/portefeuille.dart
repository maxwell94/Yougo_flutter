import 'package:flutter/material.dart';

class Portefeuille extends StatelessWidget {
  
  final String title; 

  Portefeuille({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black
          )
        ),
      ),
    );
  }
}