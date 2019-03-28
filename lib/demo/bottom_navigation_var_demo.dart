import 'package:flutter/material.dart';
class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{
  int _currentIndex = 1;
  void _onTabHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              title: Text('Explore'),
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              title: Text('History'),
              icon: Icon(Icons.history),
            ),
            BottomNavigationBarItem(
              title: Text('List'),
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              title: Text('My'),
              icon: Icon(Icons.person),
            ),
          ],
        );
  }
}