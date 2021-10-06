import 'package:database/pages/Welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key)
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcomepage(),
      /*home: Scaffold (
        body: Column (children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/pharmacyPage.jpeg"),
                    fit: BoxFit.cover)
            ),
          ),
          Welcomepage(),
        ]
*/

    );
  }

}

