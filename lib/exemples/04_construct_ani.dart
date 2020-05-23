import 'package:flutter/material.dart';

class ConstructAni extends StatefulWidget {
  @override
  _ConstructAniState createState() => _ConstructAniState();
}

class _ConstructAniState extends State<ConstructAni> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  AnimationStatus _animationStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(duration: Duration(seconds: 5), vsync: this)
      ..repeat()..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: 300,
                height: 400,
                child: RotationTransition(
                  child: Image.asset('assets/images/logo.png'),
                  alignment: Alignment.center,
                  turns: _animationController,
                ),
              ),
              RaisedButton(
                child: Text("Pressione"),
                color: Colors.purple,
                textColor: Colors.white,
                onPressed: () {
//                 if(_animationController.isAnimating)
//                  _animationController.stop();
//                 else
//                  _animationController.repeat();

                  if (_animationStatus == AnimationStatus.dismissed)
                    _animationController.forward();
                  else
                    _animationController.reverse();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
