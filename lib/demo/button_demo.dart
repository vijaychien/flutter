import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //文字按钮
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          //textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          //textColor: Theme.of(context).accentColor,
        )
      ],
    );
    //描边按钮
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                // shape: BeveledRectangleBorder(
                //   borderRadius: BorderRadius.circular(5.0)
                // ),
                shape: StadiumBorder(),
              )),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            textColor: Colors.black,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                // shape: BeveledRectangleBorder(
                //   borderRadius: BorderRadius.circular(5.0)
                // ),
                shape: StadiumBorder(),
              )),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            elevation: 0.0,
            splashColor: Colors.grey,
            //textColor: Colors.white,
            //color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        RaisedButton(
          child: Text('Button'),
          onPressed: () {},
          elevation: 10.0,
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        // SizedBox(width: 5.0,),
      ],
    );
    //有固定长度按钮
    final Widget fixedWidthBUtton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 180.0,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
          ),
        ),
      ],
    );
    //占满可用长度按钮
    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 2,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
          ),
        ),
      ],
    );
    //一组带边距的按钮
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 32.0))),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            fixedWidthBUtton,
            expandedButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
