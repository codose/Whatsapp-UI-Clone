import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/Components.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

import 'calls/AllCallScreen.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  Map<int, Widget> _items = <int, Widget>{
    0: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0), child: Text("All")),
    1: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Text("Missed"))
  };

  Widget getCurrentTab() {
    if (_selectedValue == 0) {
      return AllCallScreen();
    } else {
      return MissedCallScreen();
    }
  }

  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            customAppBar(<Widget>[
              transparentMaterialButton(text: "Edit"),
              Container(
                height: 48,
                child: CupertinoSegmentedControl(
                    children: _items,
                    groupValue: _selectedValue,
                    onValueChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    }),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  MyFlutterApp.call,
                  color: Colors.blue,
                ),
              )
            ]),
            Expanded(child: getCurrentTab())
          ],
        ),
      ),
    );
  }
}
