import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/Components.dart';
import 'package:whatsapp_ui_clone/models/Chat.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  Widget listView() {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
                    child: Column(children: <Widget>[
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                                radius: 52 / 2,
                                child: Text(chats[index].name[0])),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        mainText(chats[index].name),
                                        subText(chats[index].time)
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 4.0)),
                                  Row(
                                    children: [
                                      Icon(chats[index].icon,
                                          size: 12,
                                          color: getColor(chats[index].icon)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 12.0)),
                                      subText(chats[index].message),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ])
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 84, right: 26),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                  child: customAppBar(
                    <Widget>[
                      transparentMaterialButton(text: "Edit", onPressed: null),
                      IconButton(
                          icon: Icon(
                            MyFlutterApp.edit,
                            color: Colors.blue,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
                headerText("Chats"),
                customAppBar(
                  <Widget>[
                    transparentMaterialButton(
                        text: "Broadcast  List", onPressed: null),
                    transparentMaterialButton(
                        text: "New Group", onPressed: null),
                  ],
                ),
                listView()
              ]),
        ),
      ),
    );
  }

  getColor(IconData icon) {
    if (icon == MyFlutterApp.double_tick) {
      return Colors.blue;
    } else if (icon == MyFlutterApp.recorder) {
      return Colors.green;
    } else {
      return Colors.grey.shade700;
    }
  }
}
