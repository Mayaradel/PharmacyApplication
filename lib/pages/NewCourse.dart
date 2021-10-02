import 'package:flutter/material.dart';

class NewCourse extends StatefulWidget {
  @override
  _NewCourseState createState() => _NewCourseState();
}

class _NewCourseState  extends State<NewCourse> {
  var name;
  var content;
  var hours;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Course'),
      ),
      body : Form(child: Column(
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
          ],
        ),
      )

    );
  }
}
