import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redandblacktheme/Fonts/my_flutter_app_icons.dart';
import 'package:redandblacktheme/authenthication/LoginPage.dart';
import 'package:redandblacktheme/background_Design/background_design.dart';
import 'package:redandblacktheme/widgets/authenthicationWidgets.dart';
import 'package:page_transition/page_transition.dart';
class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  Color primaryOrangeColor = Color(0xFFf35242);

  @override
  Widget build(BuildContext context) {
    return
      Material(
        child: Container(
          child: CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Container(
                padding: EdgeInsets.only(left: 28,right: 28),

                child: ListView(


                  padding: EdgeInsets.only(top: 200),
                  children: [
                    ///Sign in Text
                    Align(
                      alignment: Alignment.topLeft,

                        child:text("Sign Up", 60, 1)

                    ),
                    SizedBox(
                      height: 20,
                    ),

                    /// username InputTextField
               textField("Name"),


                    /// password InputTextField
                    SizedBox(
                      height: 20,
                    ),

                /// Email
                  textField("Email"),

                    SizedBox(
                      height: 20,
                    ),
                    ///Password

                    textField("Password"),
                    SizedBox(
                      height: 20,
                    ),
                    /// Confirm Password
                    textField("Confirm Password"),
                    SizedBox(
                      height: 20,
                    ),



              button("Sign Up"),
                    SizedBox(
                      height: 20,
                    ),


                  Align(
                    alignment: Alignment.bottomRight,
                      child: InkWell(
                          onTap: (){
                            Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, duration: Duration(seconds: 1),child: LoginPage()));
                          },
                          child: text("Already Registered? Sign In", 15, 1)))
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


