import 'package:flutter/material.dart';

class AniSimCur extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  
  final Tween<double> sizeTween = Tween<double>(begin: 0, end: 300);
  final Tween<double> opacityTween = Tween<double>(begin: 1, end: 0);

  AniSimCur({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Opacity(
           opacity: opacityTween.evaluate(animation).clamp(0.1, 1.0),
           child: Container(
            height: sizeTween.evaluate(animation),
            width: sizeTween.evaluate(animation),
            child: child,
           ),
          );
        },
        child: child,
      ),
    );
  }
}
