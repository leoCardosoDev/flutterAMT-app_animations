import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicsAniB extends StatefulWidget {
  @override
  _BasicsAniBState createState() => _BasicsAniBState();
}

class _BasicsAniBState extends State<BasicsAniB> {
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
        child: GestureDetector(
          onTap: () {
            setState(() {
              _status = !_status;
            });
          },
          child: AnimatedContainer(
            duration: Duration(
              microseconds: 500,
            ),
            curve: Curves.linear,
            alignment: Alignment.center,
            width: _status ? 60 : 160,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    duration: Duration(microseconds: 200),
                    opacity: _status ? 1 : 0,
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    duration: Duration(microseconds: 100),
                    opacity: !_status ? 1 : 0,
                    child: Text(
                      'Mensagem',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
