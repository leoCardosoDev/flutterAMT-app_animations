import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImplicitaAni extends StatefulWidget {
  @override
  _ImplicitaAniState createState() => _ImplicitaAniState();
}

class _ImplicitaAniState extends State<ImplicitaAni> {
  
  bool _status = true;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(20),
            height: !_status ? 400 : 200,
            width: _status ? 200 : 400,
            child: Image.asset('assets/images/logo.png'),
            curve: Curves.elasticInOut,
          ),
          RaisedButton(
            child: Text('alterar'),
            onPressed: (){
              setState(() {
                _status = !_status;
              });
            },
          ),
        ],
      ),
    );
  }
}
