import './trip.dart';
import 'package:flutter/material.dart';

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

    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
               Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                     _iconDestination(),
                    _originAndDestionation(),
                    _chauffeurDesign(),
                    
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    _prixDesign()
                  ],
                )
              
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconDestination() {

    return Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.directions_car, color: Color(0xFFF00d5d8)),
          Icon(Icons.fiber_manual_record,color: Color(0xFFF00d5d8),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFF00d5d8),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFF00d5d8),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFF00d5d8),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFF00d5d8),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFF00d5d8),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFF00d5d8),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFFf89380),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFFf89380),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFFf89380),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFFf89380),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFFf89380),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFFf89380),size: 6),
          Icon(Icons.fiber_manual_record,color: Color(0xFFFf89380),size: 6),
          Icon(Icons.location_on,color: Color(0xFFFf89380)),
        ],
      ),
    );
  }

 Widget _prixDesign() {

   return Column(
        children: <Widget>[
           Text(
              "\$${25.50.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFFF00d5d8),
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold
              )
            ),
        ],
     );

 } 

Widget _chauffeurDesign() {

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
     Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Text(
            "Max Dedou",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: AssetImage('assets/maxio.jpg'),
          )
       ],
     ),

      Text(
        "CK231KV",
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold
        )
      ),

    ],
  );
}

Widget _originAndDestionation(){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: "Départ \n",
            style: TextStyle(color: Color(0xFFFb7b7c5),fontSize: 14,fontFamily: 'Quicksand')
            ),
            TextSpan(text: "Koumassi",
            style: TextStyle(fontSize: 17,color: Colors.black,fontFamily: 'Quicksand'),
            )
          ]
        ),
      ),

      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: "Mer 15, 16:12",
            style: TextStyle(color: Color(0xFFFb7b7c5),fontSize: 14,fontFamily: 'Quicksand')
            )
          ]
        ),
      ),      

      SizedBox(height: 65),

       RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: "Destination \n",
            style: TextStyle(color: Color(0xFFFb7b7c5),fontSize: 14,fontFamily: 'Quicksand')
            ),
            TextSpan(text: "Deux Plateaux",
            style: TextStyle(fontSize: 17,color: Colors.black,fontFamily: 'Quicksand'),
            )
          ]
        ),
      ),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: "Mer 15, 17:12",
            style: TextStyle(color: Color(0xFFFb7b7c5),fontSize: 14,fontFamily: 'Quicksand')
            )
          ]
        ),
      ), 

    ],

  );

}

}