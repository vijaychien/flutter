import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  final Widget child;

  RadioDemo({Key key, this.child}) : super(key: key);

  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  void _handleRadioValueChange(int value){
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue:$_radioGroupA',style: TextStyle(fontSize: 20.0),),
            SizedBox(height: 20.0,),
            RadioListTile(
              value: 0,
              onChanged: _handleRadioValueChange,
              groupValue: _radioGroupA,
              //activeColor: Colors.black,
              title: Text('Option A'),
              subtitle: Text('Descrition'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              onChanged: _handleRadioValueChange,
              groupValue: _radioGroupA,
              //activeColor: Colors.black,
              title: Text('Option A'),
              subtitle: Text('Descrition'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Radio(
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChange,
                //   activeColor: Colors.black,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChange,
                //   activeColor: Colors.black,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}