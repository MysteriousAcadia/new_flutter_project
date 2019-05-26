import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget{
  final FirebaseUser user;
  Home(this.user);
  @override
  State<StatefulWidget> createState() {
    
    return _HomeState();
  }

}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title: Text(widget.user.email),),);
  }
  

}