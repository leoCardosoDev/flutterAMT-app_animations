//import 'package:animationsapp/exemples/01-implicita_ani.dart';
//import 'package:animationsapp/exemples/02_basics_ani.dart';
//import 'package:animationsapp/exemples/02_basics_ani_b.dart';
//import 'package:animationsapp/exemples/03_tweenbuilder_ani.dart';
//import 'package:animationsapp/exemples/04_construct_ani.dart';
//import 'package:animationsapp/exemples/05_animation_build_ani.dart';

import 'package:animationsapp/exemples02/01_logo_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: LogoApp(),
    );
  }
}
