import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Color.fromRGBO(25, 84, 164, 1.0),
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(



  
  border: Border(
    top: BorderSide(color: Color.fromRGBO(25, 84, 164, 1.0), width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your Email',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontFamily: 'San Fransisco',
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(25, 84, 164, 1.0), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(25, 84, 164, 1.0), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  prefixIcon: Padding(
    child: IconTheme(
      data: IconThemeData(color: Colors.grey),
      child: Icon(Icons.email),
    ),
    padding: EdgeInsets.only(left: 30, right: 10),
  ),
);
