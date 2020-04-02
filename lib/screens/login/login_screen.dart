import 'package:flutter/material.dart';
import 'package:tasks_animation/screens/login/widgets/form_container.dart';
import 'package:tasks_animation/screens/login/widgets/sign_up_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 25),
                      child: Image.asset(
                        "images/icon.png",
                        width: 130,
                        height: 130,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FormContainer(),
                    SignUpButton(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
