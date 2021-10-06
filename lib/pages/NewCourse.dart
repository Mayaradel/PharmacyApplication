// ignore_for_file: unused_local_variable

import 'package:database/Model/Course.dart';
import 'package:database/dbhelper.dart';
import 'package:flutter/material.dart';

class NewCourse extends StatefulWidget {
  @override
  _NewCourseState createState() => _NewCourseState();
}

class _NewCourseState  extends State<NewCourse> {
  var name;
  var content;
  // var hours;
  late DbHelper helper ;

  @override
  void initState() {
    super.initState();
    helper = DbHelper();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Course'),
      ),
      body :
      Form(child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter course name'
              ),
              onChanged:(value) {
                setState(() {
                  name = value;
                });
              },
            ),

            SizedBox(height: 20,),

            TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: 'Content'
              ),
              onChanged: (value) {
                content=value;
              },
            ),
            SizedBox(height: 20,),

            /*TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Course hours'
              ),
              onChanged: (value){
                setState(() {
                  hours = int.parse(value);
                });
              },
            ),
            SizedBox(height: 15,),*/

            RaisedButton( child: Text('Save'),
                onPressed : () async{
                  Course c = Course({'name':name ,'content':content});
                  int id = await helper.createCourse(c);
                  Navigator.of(context).pop();
                },
            )
          ],
        ),
      )
    );
  }
}
