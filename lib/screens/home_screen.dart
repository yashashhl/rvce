import 'package:flash_chat/components/mypadding.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  bool color0 = true, color1 = false, color2 = false, color3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 255, 255, 1.0),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Yashash H L",style: normalTextStyle3(),),
              accountEmail: new Text("yashashhl420@gmail.com",style: normalTextStyle3(),),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Color.fromRGBO(25 , 84, 164, 1.0),
                child: new Text(
                  "Y",
                  style: TextStyle(color: Colors.white,fontSize: 25.0,),
                ),
              ),
            ),
            new ListTile(
              title: Text(
                "Results",
                style: normalTextStyle2(),
              ),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Clubs",
                style: normalTextStyle2(),
              ),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Faculty",
                style: normalTextStyle2(),
              ),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Infrastructure",
                style: normalTextStyle2(),
              ),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Fee Structure",
                style: normalTextStyle2(),
              ),
              onTap: () {
              },
            ),
            new Divider(),
            new ListTile(
              title: Text(
                "Log out",
                style: normalTextStyle2(),
              ),
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil('welcome_screen', (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          "RVCE",
          style: TextStyle(
            debugLabel: 'blackCupertino display4',
            fontFamily: 'San Fransico',
            fontSize: 25.0,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 3.5,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromRGBO(246, 247, 248, 1.0),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.black87,
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // type: BottomNavigationBarType.fixed,
        iconSize: 27,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:
                  (color0) ? Color.fromRGBO(25 , 84, 164, 1.0) : Colors.black54,
            ),
            title: Text(
              "Home",
              style: navigationTextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
              color:
                  (color1) ? Color.fromRGBO(25 , 84, 164, 1.0) : Colors.black54,
            ),
            title: Text(
              "Placements",
              style: navigationTextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                          icon: Icon(
                Icons.message,
                color:
                    (color2) ? Color.fromRGBO(25 , 84, 164, 1.0) : Colors.black54,
              ),
              onPressed: () {
              Navigator.pushNamed(context, ChatScreen.id);
            },
            ),
            title: Text(
              "Chats",
              style: navigationTextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color:
                  (color3) ? Color.fromRGBO(25 , 84, 164, 1.0): Colors.black54,
            ),
            title: Text(
              "profile",
              style: navigationTextStyle(),
            ),
          ),
        ],
        backgroundColor: Color.fromRGBO(246, 247, 248, 1.0),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              color0 = true;
              color1 = false;
              color2 = false;
              color3 = false;
            }
            if (index == 1) {
              color1 = true;
              color0 = false;
              color2 = false;
              color3 = false;
            }
            if (index == 2) {
              color2 = true;
              color0 = false;
              color1 = false;
              color3 = false;
            }
            if (index == 3) {
              color3 = true;
              color0 = false;
              color1 = false;
              color2 = false;
            }
          });
        },
      ),
    );
  }
}