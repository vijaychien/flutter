import 'package:flutter/material.dart';
import 'dart:async';

enum Action{
  Cancel,Ok
}
class AlertDialogDemo extends StatefulWidget {
  final Widget child;

  AlertDialogDemo({Key key, this.child}) : super(key: key);

  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';
  Future _openAlertDialog() async {
    final option = await showDialog(
      context: context,
      barrierDismissible: false, //强制用户必须要选择才能关闭
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: (){
                Navigator.pop(context,Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.pop(context,Action.Ok);
              },
            ),
          ],
        );
      }
    );
    switch (option) {
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('AlertDialogDeo'),
         elevation: 0.0,
       ),
       body: Container(
         padding: EdgeInsets.all(16.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           
           children: <Widget>[
             Text('Your choice is $_choice'),
             SizedBox(
               height: 20.0,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 
                 RaisedButton(
                   child: Text('Open AlertDialog'),
                   onPressed: _openAlertDialog,
                 ),
               ],
             ),
           ],
         ),
       ),
    );
  }
}