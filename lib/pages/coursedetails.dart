import 'package:database/Model/Course.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget{
  Course course;
  CourseDetails(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body:
        Padding(padding:
        EdgeInsets.all(12.0),
      child:
            Column(
          children:<Widget> [
      Text(course.name , style: Theme.of(context).textTheme.headline4),
      SizedBox(height: 20,),
      Text(course.content , style: Theme.of(context).textTheme.bodyText1),
      SizedBox(height: 20,),

        ],
      ),
      ),
    );
  }
  
}