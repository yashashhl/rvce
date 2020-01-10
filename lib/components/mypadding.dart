import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  final String text;
  HeadText({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      style: headingTextStyle(),
    );
  }
}
  TextStyle headingTextStyle() {
    return TextStyle(
      color: Colors.black87,
      debugLabel: 'blackCupertino display4',
      fontFamily: 'San Fransico1',
      fontSize: 40.0,
      // fontWeight: FontWeight.bold,
      letterSpacing: 0.7,
    );
  }

class NormalText extends StatelessWidget {
  final String text;
  NormalText({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      style: normalTextStyle(),
    );
  }
}

  TextStyle normalTextStyle() {
    return TextStyle(
      color: Colors.white,
      debugLabel: 'blackCupertino display4',
      fontFamily: 'San Fransico',
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
    );
  }

    TextStyle normalTextStyle2() {
    return TextStyle(
      color: Colors.black,
      debugLabel: 'blackCupertino display4',
      fontFamily: 'San Fransico',
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.8,
    );
  }
  TextStyle normalTextStyle3() {
    return TextStyle(
      color: Colors.black,
      debugLabel: 'blackCupertino display4',
      fontFamily: 'San Fransico',
      fontSize: 15.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.8,
    );
  }

TextStyle navigationTextStyle() {
    return TextStyle(
      color: Color.fromRGBO(25 , 84, 164, 1.0),
      debugLabel: 'blackCupertino display4',
      fontFamily: 'San Fransico',
      fontSize: 10.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.0,
    );
  }

class MyPadding extends StatelessWidget {
  final Color mycolor;
  final String s;
  final Function onpressed;
  MyPadding({@required this.mycolor, this.s, @required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        color: Color.fromRGBO(25 , 84, 164, 1.0),
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: RaisedButton(
          hoverColor: Colors.black87,
          padding: EdgeInsets.all(10.0),
          hoverElevation: 700.0,
          highlightElevation: 700.0,
          onPressed: onpressed,
          color: Color.fromRGBO(25 , 84, 164, 1.0),
          // minWidth: 100.0,
          // height: 42.0,
          child: NormalText(text: s,)
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.icon,
      this.hint,
      this.obsecure = false,
      this.validator,
      this.onSaved});
  final FormFieldSetter<String> onSaved;
  final Icon icon;
  final String hint;
  final bool obsecure;
  final FormFieldValidator<String> validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        autofocus: true,
        obscureText: obsecure,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
              ),
            ),
            prefixIcon: Padding(
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).primaryColor),
                child: icon,
              ),
              padding: EdgeInsets.only(left: 30, right: 10),
            )),
      ),
    );
  }
}
