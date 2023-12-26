
import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';


void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=>const MyLogin(),
      'signup':(context)=>const MySignup(),

    },
  ));
}
