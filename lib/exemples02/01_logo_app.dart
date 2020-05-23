import 'package:animationsapp/exemples02/03_grow_transition.dart';
import 'package:animationsapp/exemples02/03_logo_widget.dart';
import 'package:animationsapp/exemples02/04_ani_sim_cur.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      lowerBound: 0,
      upperBound: 1,
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _animationController, curve: Curves.elasticOut);
    _animation.addStatusListener
     ((status) {
     if(status == AnimationStatus.completed){
      _animationController.reverse();
     }else if(status == AnimationStatus.dismissed){
      _animationController.forward();
     }
    });
    
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AniSimCur(
     child: LogoWidget(),
     animation: _animation,
    );
  }
}


