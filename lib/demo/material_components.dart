import 'package:flutter/material.dart';
import './button_demo.dart';
import './floating_action_button_demo.dart';
import './popup_menu_button_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';
import './alert_dialog_demo.dart';
import './buttom_sheet_demo.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'ButtomSheet',
            page: ButtomSheetDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'AlertDialog',
            page: AlertDialogDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'SimpleDialog',
            page: SimpleDialogDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'DateTime',
            page: DateTimeDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'Slider',
            page: SliderDemo(),
            // page: FloatActionButtonDemo(),
          ),
          
          ListItem(
            title: 'Switch',
            page: SwitchDemo(),
            // page: FloatActionButtonDemo(),
          ),
          
          ListItem(
            title: 'Radio',
            page: RadioDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'CheckBox',
            page: CheckboxDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'Form',
            page: FormDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
            // page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'FolatingActionButton',
            page: FloatActionButtonDemo(),
          ),
          ListItem(
            title: 'PopupMenuButton',
            page: PopupMenuButtonDemo(),
          ),
        ],
      ),
      
    );
  }
}



class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
