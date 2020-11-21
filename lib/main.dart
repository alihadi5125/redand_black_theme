import 'package:flutter/material.dart';
import 'package:redandblacktheme/authenthication/LoginPage.dart';
import 'package:redandblacktheme/authenthication/SignUpScreen.dart';


void main() {
  runApp(MaterialApp(home:MainPage()));
}

class MainPage extends StatefulWidget {
  Color backgroundColor=Color(0xFFff4545);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        

        backgroundColor:widget.backgroundColor ,
        body:SignUp(),
      ),
    );
  }
}
