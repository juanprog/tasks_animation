import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller});

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 45),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 250,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 161, 27, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Text(
            "Sign in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
