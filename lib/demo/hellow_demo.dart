import 'package:flutter/material.dart';
class Hello extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
      'Hello2',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    ),
    );
  }
}
