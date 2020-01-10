import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/mypadding.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    animation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
    controller.forward();
    // animation.addStatusListener((status) {
    //   if(status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if(status==AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });
    controller.addListener(() {
      setState(() {});
      //print(animation.value);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'rvce',
                  child: Container(
                    child: Image.asset('images/rvce.png'),
                    height: 90.0,
                  ),
                ),
                SizedBox(
                  height: 28.0,
                ),
                new HeadText(
                  text: 'RVCE',
                ),
              ],
            ),
            SizedBox(
              height: 28.0,
            ),
            MyPadding(
              mycolor: Colors.redAccent,
              s: "Log In",
              onpressed: () {
                Navigator.pushNamed(
                  context,
                  LoginScreen.id,
                );
              },
            ),
            MyPadding(
              mycolor: Colors.blueAccent,
              s: "Register",
              onpressed: () {
                Navigator.pushNamed(
                  context,
                  RegistrationScreen.id,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}