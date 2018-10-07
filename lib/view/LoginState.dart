import 'package:demo_app_flutter/view/LoginView.dart';
import 'package:flutter/material.dart';

class LoginState extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _LoginState();

}

class _LoginState extends State<LoginState>{

  @override
  Widget build(BuildContext context) => LoginView().build(context);

}