import 'package:drawer/historique.dart';
import 'package:drawer/portefeuille.dart';
import 'package:drawer/profile.dart';
import 'package:drawer/reservation.dart';
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
      home: HomePage(),
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

class HomePage extends StatelessWidget {
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
      body: Center(
        child: Text('Carte',
              style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black
          )
        ),
      ),
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
              'Portefeuille', 
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
              trailing: Icon(Icons.credit_card,color: Colors.black),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => new Portefeuille(title: "Portefeuille"))
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
           ),

          ],
        ),
      ),
  );
}
}