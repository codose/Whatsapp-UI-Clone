import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/Components.dart';
import 'package:whatsapp_ui_clone/screens/tabs/StatusScreen.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

import 'tabs/CallScreen.dart';
import 'tabs/CameraScreen.dart';
import 'tabs/ChatsScreen.dart';
import 'tabs/SettingsScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> mainScreens = [
    StatusScreen(),
    CallScreen(),
    CameraScreen(),
    ChatsScreen(),
    SettingsScreen()
  ];
  var _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  IconData _getSelectedIcon() {
    if (_selectedIndex == 1) {
      return MyFlutterApp.call_filled;
    } else if (_selectedIndex == 3) {
      return MyFlutterApp.chats;
    } else if (_selectedIndex == 4) {
      return MyFlutterApp.settings_filled;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            showUnselectedLabels: true,
            currentIndex: _selectedIndex == null ? 3 : _selectedIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.status),
                title: Text('Status'),
              ),
              BottomNavigationBarItem(
                icon: Icon(_selectedIndex != 1
                    ? MyFlutterApp.call
                    : _getSelectedIcon()),
                title: Text('Call'),
              ),
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.camera),
                title: Text('Camera'),
              ),
              BottomNavigationBarItem(
                icon: Icon(_selectedIndex != 3
                    ? MyFlutterApp.chats_outline
                    : _getSelectedIcon()),
                title: Text('Chats'),
              ),
              BottomNavigationBarItem(
                icon: Icon(_selectedIndex != 4
                    ? MyFlutterApp.settings
                    : _getSelectedIcon()),
                title: Text('Settings'),
              ),
            ]),
        body: mainScreens[_selectedIndex]);
  }
}
