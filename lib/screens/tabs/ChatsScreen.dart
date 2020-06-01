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
    return SizedBox(
      height: 491.4,
      child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0),
                child: Column(children: <Widget>[
                  Divider(),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                            radius: 52 / 2, child: Text(chats[index].name[0])),
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(chats[index].name,
                                        style: TextStyle(
                                            fontFamily: "SfPro",
                                            fontSize: 21,
                                            fontWeight: FontWeight.w600)),
                                    Text(chats[index].time,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "SfPro",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 4.0)),
                              Row(
                                children: [
                                  Icon(chats[index].icon,
                                      size: 12,
                                      color: getColor(chats[index].icon)),
                                  Padding(padding: EdgeInsets.only(left: 12.0)),
                                  Text(chats[index].message,
                                      style: TextStyle(
                                          fontFamily: "SfPro",
                                          color: Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ])
                ]),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("Chats",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        fontFamily: "SfPro")),
              ),
              customAppBar(
                <Widget>[
                  transparentMaterialButton(
                      text: "Broadcast  List", onPressed: null),
                  transparentMaterialButton(text: "New Group", onPressed: null),
                ],
              ),
              listView()
            ]),
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
