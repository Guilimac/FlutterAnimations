import 'package:flutter/material.dart';
import 'package:my_animmated_app/screens/login/widgets/form_container.dart';
import 'package:my_animmated_app/screens/login/widgets/sign_up_button.dart';
import 'package:my_animmated_app/screens/login/widgets/stagger_animation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin{

  AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top:70, bottom: 32),
                        child: Image.asset("images/tickicon.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.contain,),
                    ),
                    FormContainer(),
                    SignUpButton()
                  ],
                ),
                StaggerAnimation(
                  controller: _controller.view
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
