import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:drawer/reservation.dart';
import 'package:drawer/historique.dart';
import 'package:drawer/profile.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {

   HomePage(); 
    
   final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 10.0,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 11.0);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
  
   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'YouGo',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        elevation: 0.0,
      ),
      body: new Scaffold( 
        body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        }
       ),
       floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
     )
      ,
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text(
                'Max Dedou',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ), 
              accountEmail: Text(
                'maxirsula@gmail.com',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/maxio.jpg')
              ), 
            ),

            new ListTile(
              title: new Text(
              'Historique', 
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
              trailing: Icon(Icons.history,color: Colors.black),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => new Historique(title: "Historique"))
                );
              } 
           ),
          Divider(), 
            new ListTile(
              title: new Text(
              'Profile', 
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
              trailing: Icon(Icons.person,color: Colors.black),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => new Profile(title: "Profile"))
                );
              }  
           ),
           Divider(),
           new ListTile(
              title: new Text(
              'Reservation', 
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
              trailing: Icon(Icons.event_note,color: Colors.black),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => new Reservation(title: "Reservation"))
                );
              }  
           ),
          Divider(), 
          new ListTile(
              title: new Text(
              'Déconnexion', 
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            trailing: Icon(Icons.power_settings_new,color: Colors.black),
            onTap: () {
               Navigator.of(context).pop();
               showDialog(
                 context: context,
                 builder: (BuildContext context) =>   CupertinoAlertDialog(
                    title: new Text(
                      "Déconnexion",
                      style: TextStyle(
                        fontSize: 18,color: Colors.black,fontFamily: 'Quicksand',fontWeight: FontWeight.bold
                      ),
                    ),
                    content: new Text(
                      "Etes vous sur de vouloir vous déconnecter?",
                      style: TextStyle(
                        fontSize: 16,color: Colors.black,fontFamily: 'Quicksand'
                      ),
                    ),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        isDefaultAction: true,
                        child: Text(
                          "Confirmer",
                        style: TextStyle(
                            fontSize: 17,color: Colors.blue,fontFamily: 'Quicksand'
                        ),
                      ),
                      onPressed: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text(
                          "Annuler",
                          style: TextStyle(
                            fontSize: 17,color: Colors.blue,fontFamily: 'Quicksand'
                          ),                      
                        ),
                        onPressed: (){
                          Navigator.of(context).pop();
                        }
                      )
                    ],
                )
              ); 

            },

           ),

          ],
        ),
      ),
  );
}
}