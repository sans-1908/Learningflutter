import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login page",style: TextStyle(
        fontSize: 30,
          color:Colors.deepPurple,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
