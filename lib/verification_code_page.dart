import 'package:drawer/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class VerificationCodePage extends StatefulWidget {

  VerificationCodePage(); 

  @override
  _VerificationCodePageState createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {

  String _onCompleted = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:300, left:50, right:50),
            child: Text(
              'Enter the verification code',
              style: TextStyle(
                color: Colors.black, 
                fontFamily: 'Quicksand',
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 20) 
          ,
          VerificationCodeInput(
            keyboardType: TextInputType.number,
            length: 5,
            autofocus: false,
            onCompleted: (String value) {
              print(value);
              setState(() {
                _onCompleted = value;
              });
            },
          ),
          SizedBox(height: 20),
         
          (_onCompleted != "")
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Your code: $_onCompleted',
                ),
              ),
            )
          : Container(),

          SizedBox(height: 50),
          Container(
            height: 50.0,
            width: 300.0,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              shadowColor: Colors.greenAccent,
              color: Colors.green,
              elevation: 10.0,
              child: GestureDetector(
                onTap: (){
                    Navigator.of(context).push(
                      new MaterialPageRoute(builder: (BuildContext context) => new LoginPage()
                    )
                  );
                } ,
                
                child: Center(
                  child: Text(
                  'VERIFIY THE CODE',
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

        ],

      ),
    );
  }
}