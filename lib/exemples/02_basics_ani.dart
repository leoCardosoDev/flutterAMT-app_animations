import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicsAni extends StatefulWidget {
  @override
  _BasicsAniState createState() => _BasicsAniState();
}

class _BasicsAniState extends State<BasicsAni> {
  bool _status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(_status ? Icons.arrow_upward : Icons.arrow_downward),
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
      ),
      body: SafeArea(
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          color: Colors.orange,
          padding: EdgeInsets.only(bottom: 100, top: 20),
          alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,
          child: AnimatedOpacity(
           duration: Duration(seconds: 3),
            opacity: _status ? 1 : 0,
            child: Container(
              height: 50,
              child: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
