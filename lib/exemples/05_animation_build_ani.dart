import 'package:flutter/material.dart';

class AnimateBuilderAni extends StatefulWidget {
  @override
  _AnimateBuilderAniState createState() => _AnimateBuilderAniState();
}

class _AnimateBuilderAniState extends State<AnimateBuilderAni> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<Offset>(
     begin: Offset(0,0),
     end: Offset(60, 0)
    ).animate(_animationController);
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
   _animationController.forward();
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animation,
        child: Stack(
         children: <Widget>[
          Positioned(
           width: 180,
           height: 180,
           left: 0,
           top: 0,
           child: Image.asset('assets/images/logo.png'),
          ),
         ],
        ),
        builder: (context, widget) {
         return Transform.translate(
          offset: _animation.value,
          child: widget,
         );
//          return Transform.scale(
//            scale: _animation.value,
//            child: widget,
//          );
//          return Transform.rotate(
//            angle: _animation.value,
//            child: widget,
//          );
        },
      ),
    );
  }
}
