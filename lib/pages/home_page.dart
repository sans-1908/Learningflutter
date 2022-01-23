import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days=90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.indigoAccent
          ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

    
    