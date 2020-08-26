import 'package:flutter/material.dart';
import './enregistrement.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {

  LoginPage();

   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 150.0, 0.0, 0.0),
                  child: Text(
                     'YouGo',
                     style: TextStyle(
                       fontFamily: 'Quicksand',
                       fontSize: 70.0,
                       fontWeight: FontWeight.bold
                     ),
                  )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 250.0, 15.0, 0.0),
                  child: Text(
                     'Effectuez vos deplacements plus rapidement!',
                     style: TextStyle(
                       fontFamily: 'Quicksand',
                       fontSize: 25.0,
                       color: Colors.black,
                       fontWeight: FontWeight.bold
                     ),
                  )
                ),

              ],
            ),
          ), 

          Container(
            padding: EdgeInsets.only(top:35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'TELEPHONE',
                    labelStyle: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    ),
                  ),
                  style: TextStyle (
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 15.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'MOT DE PASSE',
                    labelStyle: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    ),
                  ),
                  obscureText: true,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top:15.0, left: 20.0),
                  child: InkWell(
                    child: Text(
                      'Mot de passe oublié?',
                      style: TextStyle(
                       fontFamily: 'Quicksand',
                       fontSize: 14.0,
                       color: Colors.green,
                       fontWeight: FontWeight.bold,
                       decoration: TextDecoration.underline
                     ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 10.0,
                    child: GestureDetector(
                      onTap: (){
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (BuildContext context) => new HomePage()
                          )
                        );
                      } ,
                      child: Center(
                        child: Text(
                        'LOGIN',
                        style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )                          
                      )
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 50,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 1.0
                      ),
                      color:Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(
                            AssetImage('assets/facebook.png')
                          ),           
                        ), 
                        SizedBox(width: 10.0),
                        Center(
                          child: Text(
                            'Login with Facebook',
                            style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                           )                               
                          )
                        )

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Etes vous nouveau sur YouGo?',
                      style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14.0,
                      color: Colors.black
                      )                        
                    ),
                    SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          new MaterialPageRoute(builder: (BuildContext context) => new Enregistrement())
                        );
                      },
                      child: Text(
                        'Enregistrement',
                        style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        )                        
                      )  
                    )                
                  ],
                )

              ]
            ),
          )
        ],
      ),
    );
  }

}