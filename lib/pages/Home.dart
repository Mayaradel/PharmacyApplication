import 'package:database/Model/Course.dart';
import 'package:database/pages/NewCourse.dart';
import 'package:database/pages/coursedetails.dart';
import 'package:flutter/material.dart';

import '../dbhelper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   late DbHelper helper;

  @override
  void initState() {
    super.initState();
    helper = DbHelper();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQL DATA'),
        actions: <Widget>[
          IconButton( icon: Icon(Icons.add),
              onPressed:()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>NewCourse()))
          ),
        ],
      ),

      body:
            FutureBuilder(future: helper.allCourses(),
        builder: (context, AsyncSnapshot snapshot) {

        if (!snapshot.hasData){
            return CircularProgressIndicator();
          }

          else
            {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) {
                    Course course = Course.fromMap(snapshot.data[i]);

                    return ListTile(
                      title: Text('${course.name}'),
                        subtitle: Text(course.content),
                      trailing: IconButton( icon: Icon(Icons.delete , color: Colors.red,)
                          ,onPressed:() {
                            setState(() {
                              helper.deleteCourse(course.id);
                            });
                          },),
                      onTap:() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CourseDetails(course),));
                      },

                      );
                  }
              );
            }
        },

      )

     //     ],
       // )
    );
  }
}