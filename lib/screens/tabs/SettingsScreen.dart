import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/Components.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget listItem(IconData icon, Color iconColor, String text) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, left: 16.0, right: 16.0, bottom: 12.0),
              child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        icon,
                        color: iconColor,
                        size: 30,
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(text,
                                  style: TextStyle(
                                      fontFamily: "SfPro",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.grey.shade300,
                              )
                            ]),
                      )
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 62),
            child: Divider(height: 1),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          child: SafeArea(
            child: Column(children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: mainText("Settings"),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12.0, left: 16.0, right: 16.0, bottom: 12.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(radius: 58 / 2, child: Text("A")),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Expanded(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      mainText("Ogie"),
                                      subText("Android/Flutter developer")
                                    ],
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.grey.shade300,
                                  )
                                ]),
                          )
                        ],
                      )),
                ),
              ),
              SizedBox(width: double.infinity, height: 45),
              Divider(height: 1),
              listItem(
                  MyFlutterApp.star, Colors.yellow.shade700, "Starred Message"),
              listItem(MyFlutterApp.pc, Colors.green.shade600, "Whatsapp Web"),
              Divider(height: 1),
              SizedBox(width: double.infinity, height: 30),
              Divider(height: 1),
              listItem(MyFlutterApp.key, Colors.purple.shade700, "Accounts"),
              listItem(MyFlutterApp.whatsapp, Colors.green, "Chats"),
              listItem(MyFlutterApp.notifcation, Colors.red.shade400,
                  "Notifications"),
              listItem(
                  MyFlutterApp.data_1, Colors.green, "Data and Storage Usage"),
              Divider(height: 1),
              SizedBox(width: double.infinity, height: 30),
              Divider(height: 1),
              listItem(MyFlutterApp.info_i, Colors.blue, "Help"),
              listItem(MyFlutterApp.like_1, Colors.red, "Tell a Friend"),
              Divider(height: 1),
              SizedBox(width: double.infinity, height: 30),
              Center(child: subText("WhatsApp from Facebook")),
              SizedBox(width: double.infinity, height: 55),
            ]),
          ),
        ),
      ),
    );
  }
}
