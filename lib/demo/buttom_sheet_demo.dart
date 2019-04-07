import 'package:flutter/material.dart';

class ButtomSheetDemo extends StatefulWidget {
  final Widget child;

  ButtomSheetDemo({Key key, this.child}) : super(key: key);

  _ButtomSheetDemoState createState() => _ButtomSheetDemoState();
}

class _ButtomSheetDemoState extends State<ButtomSheetDemo> {
  final _buttomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  _openBottomSheet(){
    _buttomSheetScaffoldKey
    .currentState
    .showBottomSheet((BuildContext context){
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16.0,),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text('Fix you -Coldplay',textAlign: TextAlign.right,),
              )
            ],
          ),
        ),
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _buttomSheetScaffoldKey,
        appBar: AppBar(
          title: Text('ButtomSheetDemo'),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('Open BottomSheet'),
                    onPressed: _openBottomSheet,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
