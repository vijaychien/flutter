import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  final Widget child;

  SwitchDemo({Key key, this.child}) : super(key: key);

  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value){
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,
              activeColor: Colors.green,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(_switchItemA ? '😁' : '😐',style: TextStyle(fontSize: 32.0),),
                // Switch(
                //   value: _switchItemA,
                //   onChanged: (value){
                //     setState(() {
                //       _switchItemA = value;
                //     });
                //   },
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
