import 'package:flutter/material.dart';
import 'package:new_flutter_app/pages/login/welcome_page.dart';

import 'pages/login/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(NewFlutterApp());

class NewFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyNewApp",
      theme: new ThemeData(primarySwatch: Colors.yellow),
      home: WelcomePage(),
    );
  }
}
