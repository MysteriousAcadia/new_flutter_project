import 'package:flutter/material.dart';
import 'package:new_flutter_app/auth.dart';
import 'package:new_flutter_app/pages/login/sign_in_page.dart';
import 'package:new_flutter_app/pages/login/sign_up_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My firebase app'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MaterialButton(
            color: Colors.yellow,
            onPressed: navigateToSignIn,
            child: Text('Sign in'),
          ),
          MaterialButton(
            onPressed: navigateToSignUp,
            child: Text('Sign up'),
          ),
          MaterialButton(color: Colors.red,
          child: Text("Sign in with Google"),
          onPressed: authService.googleSignIn,
          padding: EdgeInsets.all(10),)
        ],
      )),
    );
  }

  void navigateToSignIn() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SignInPage(), fullscreenDialog: true));
  }

  void navigateToSignUp() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SignUpPage(), fullscreenDialog: true));
  }
}
