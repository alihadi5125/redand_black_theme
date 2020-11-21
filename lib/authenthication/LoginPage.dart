import 'package:flutter/material.dart';
import 'package:redandblacktheme/Fonts/my_flutter_app_icons.dart';
import 'package:redandblacktheme/authenthication/SignUpScreen.dart';
import 'package:redandblacktheme/background_Design/background_design.dart';
import 'package:redandblacktheme/Colors/colors.dart';
import 'package:redandblacktheme/widgets/authenthicationWidgets.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: CustomPaint(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: ListView(
                padding: EdgeInsets.only(top: 200),
                children: [
                  ///Sign in Text
                  Align(
                      alignment: Alignment.topLeft,
                      child: text("Sign In", 60, 1.0)),
                  SizedBox(
                    height: 20,
                  ),

                  /// username InputTextField
                  textField("Username"),
                  SizedBox(
                    height: 20,
                  ),

                  /// password InputTextField
                  textField("Password"),

                  SizedBox(
                    height: 20,
                  ),

                  ///Login Button
                  button("Login"),
                  SizedBox(
                    height: 20,
                  ),

                  ///Or text
                  Center(child: text("- OR -", 18, 0.7)),
                  SizedBox(
                    height: 10,
                  ),

                  /// Icons here
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: Icon(MyFlutterApp.facebook_app_logo),
                            color: primaryOrangeColor,
                            hoverColor: Colors.black,
                            iconSize: 20,
                            focusColor: Colors.black,
                            highlightColor: Colors.black,
                            onPressed: () {}),
                        /*Icon(
                              // Icons.wifi,
                              MyFlutterApp.facebook_app_logo,
                              color: primaryOrangeColor,
                            ),*/
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            icon: Icon(MyFlutterApp.google),
                            color: primaryOrangeColor,
                            hoverColor: Colors.black,
                            iconSize: 20,
                            focusColor: Colors.black,
                            highlightColor: Colors.black,
                            onPressed: () {}),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Not Registered yet?",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Play Fair Display',
                              color: primaryOrangeColor),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 7),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .07,
                          decoration: BoxDecoration(
                            color: primaryOrangeColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                           iconSize: 30,
                           color: Colors.black,
                           onPressed: (){
                            // Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1),child: SignUp()));
                             Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(seconds: 1),child: SignUp()));
                           },

                           /* Icons.arrow_forward,
                            color: Colors.black,
                            size: 30,*/
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}
