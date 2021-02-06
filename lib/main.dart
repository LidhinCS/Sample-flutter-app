import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  Myapp();
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hey! Sample App'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Count up'),
              SizedBox(
                height: 8.0,
              ),
              Text('$number')
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number += 1;
            });
          },
          child: Text('Click!'),
        ),
      ),
    );
  }
}
