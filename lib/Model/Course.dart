//import 'package:flutter/material.dart';

class Course{
  // attributes = fields in the table
  var _id;
  var _name;
  var _content;
  var _hours;

  Course(dynamic obj){
     _id = obj['id'];
     _name = obj['name'];
     _content = obj ['name'];

  }
  Course.fromMap(Map<String,dynamic>data){
    _id = data['id'];
    _name = data['name'];
    _content = data['content'];
    _hours = data['hours'];
  }

  Map<String,dynamic> toMap() => {
    'id': _id, 'name': _name, 'content': _content, 'hours': _hours
      };

      int get id => _id;
      String get name => _name;
      String get content =>_content;
      int get hours => _hours;

}