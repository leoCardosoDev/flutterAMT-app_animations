import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TweenBuilderAni extends StatefulWidget {
  @override
  _TweenBuilderAniState createState() => _TweenBuilderAniState();
}

class _TweenBuilderAniState extends State<TweenBuilderAni> {
  static final colorTween = ColorTween(begin: Colors.white, end: Colors.deepOrangeAccent);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
//       child: TweenAnimationBuilder(
//        duration: Duration(seconds: 2),
//        tween: Tween<double>(begin: 0, end: 6.28),
//        builder: (BuildContext context, double angle, Widget widget){
//         return Transform.rotate(
//          angle: angle,
//          child: Image.asset('assets/images/logo.png'),
//         );
//        },
//       ),

        child: TweenAnimationBuilder(
          duration: Duration(seconds: 2),
          tween: colorTween,
          child: Image.asset('assets/images/estrelas.jpg'),
          builder: (context, Color color, Widget widget) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.overlay),
              child: widget,
            );
          },
        ),
      ),
    );
  }
}
