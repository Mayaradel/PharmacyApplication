import 'package:database/pages/Home.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy'),
      ),

      body:
      Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/pharmacyPage.jpeg"),
                fit: BoxFit.cover)
        ),

        child:
        Column(
        children: <Widget>[
          Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 500,),
            SizedBox(
              width: 200,
              height: 50,

              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),

                onPressed:()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Home())),

                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "First Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30,),

            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                onPressed:()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Home())),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Second Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

          ],
        ),
      ),
      ],
    ),
        ),

    );
  }
}