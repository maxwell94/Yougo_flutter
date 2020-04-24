import 'package:flutter/material.dart';

final startColor = Color(0xFFaa7ce4);
final endColor = Color(0xFFe46792);
final titleColor = Color(0xff444444);
final textColor = Color(0xFFa9a9a9);
final shadowColor = Color(0xffe9e9f4);

class Profile extends StatelessWidget {
  
  final String title; 

  Profile({this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
          children: <Widget>[
            Container(
              child: ListView(
                children: <Widget>[
                  new CardHolder(),
                  SizedBox(
                    height: 200,
                  )
                ],
              ),
            ),
          ],
        ),
      );
  }

}

class CardHolder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, right: 10, left: 10),
      height: 650,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: titleColor.withOpacity(.1),
                blurRadius: 20,
                spreadRadius: 10),
        ]),
      child: new Card(),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/maxio.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: Colors.blueAccent.withOpacity(.2), width: 1)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Max Dedou',
          style: TextStyle(
            color: titleColor,
            fontSize: 24,
            fontFamily: 'Quicksand'
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '549 Voyages',
              style: TextStyle(color: textColor, fontSize: 15,fontFamily: 'Quicksand'),
              
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 12,
              child: VerticalDivider(
                width: 2,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Suivi par 1500',
              style: TextStyle(color: textColor, fontSize: 15,fontFamily: 'Quicksand'),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 12,
              child: VerticalDivider(
                width: 2,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: <Widget>[
              Text(
                'Rating',
                 style: TextStyle(color: textColor, fontSize: 15,fontFamily: 'Quicksand'),
            ),
                Icon(Icons.star_half, color: Colors.grey),
              ]
            )
            
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 20, right: 20, top: 8),
          width: 320,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 30,
                    spreadRadius: 5)
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'direction@smartcloudsolutions.ca',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Biography',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text It has roots in a piece of classical Latin literature from 45 BC',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                  )
              )
            ],
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: Divider(
                height: 1,
                color: titleColor.withOpacity(.3),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            new RaisedButton(
              color: Colors.blue,
              elevation: 5.0,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0),
              side: BorderSide(color: Colors.transparent),
            ),
              onPressed: () => print("Button Pressed"),
              child: new Text(
                "Modifier Mon Profile",
                style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
             ),
            )
     
          ],
        )
      ],
    );
  }

} 
