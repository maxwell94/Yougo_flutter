import './trip.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Historique extends StatelessWidget {
  
  final String title; 

  final List<Trip> tripsList = [
      Trip("Koumassi",DateTime.now(), DateTime.now(), 15.00 , "Toyota Yaris"),
      Trip("Adjamé",DateTime.now(), DateTime.now(), 25.00 , "Mazda"),
      Trip("Yopougon",DateTime.now(), DateTime.now(), 35.00 , "Toyota Yaris"),
      Trip("Trechville",DateTime.now(), DateTime.now(), 30.00 , "Audi A1"),
      Trip("Bingerville",DateTime.now(), DateTime.now(), 20.80 , "Mercedes class A"),
      Trip("Deux Plateaux",DateTime.now(), DateTime.now(), 15.40 , "BMW serie 1"),
      Trip("Marcory",DateTime.now(), DateTime.now(), 18.00 , "Ford Fiesta"),
      Trip("Cocody",DateTime.now(), DateTime.now(), 40.00 , "Ford Kuga"),
  ];

  Historique({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: new ListView.builder(
            itemCount: tripsList.length,
            itemBuilder: (BuildContext context, int index) => buildTripCard(context, index)
        ),
      )
    );
  }

  Widget buildTripCard(BuildContext context, int index) {

    final trip = tripsList[index];

    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                child: Row(
                  children: <Widget>[
                     Text(
                       trip.title,
                       style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'Quicksand',fontWeight: FontWeight.bold)
                     ),
                     Spacer()
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text( "${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(trip.endDate).toString()}" ,
                    style: TextStyle(color: Colors.grey, fontSize: 16,fontFamily: 'Quicksand')
                    ),
                    IconButton(
                      icon: Icon(Icons.directions_car), 
                      onPressed: null
                    ),
                    
                  ],
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "\$${trip.price.toStringAsFixed(2)}",
                      style: TextStyle(color: Colors.green, fontSize: 24,fontFamily: 'Quicksand',fontWeight: FontWeight.bold)
                    ),
                    Spacer(),
                    Text(
                      trip.car,
                      style: TextStyle(color: Colors.black, fontSize: 16,fontFamily: 'Quicksand')
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}