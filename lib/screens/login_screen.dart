import 'package:flash_chat/components/mypadding.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        color: Color.fromRGBO(190, 40, 68, 1.0),
        opacity: 0.1,
        inAsyncCall: showSpinner,
        progressIndicator: CircularProgressIndicator(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'rvce',
                child: Container(
                  height: 160.0,
                  child: Image.asset('images/rvce.png'),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter Your email')),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password.',
                    prefixIcon: Padding(
                      child: IconTheme(
                        data: IconThemeData(color: Colors.grey),
                        child: Icon(Icons.lock),
                      ),
                      padding: EdgeInsets.only(left: 30, right: 10),
                    ),
                  )),
              SizedBox(
                height: 24.0,
              ),
              MyPadding(
                mycolor: Colors.white70,
                s: 'Log In',
                onpressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, HomeScreen.id);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
