import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/Components.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: customAppBar(<Widget>[
                    transparentMaterialButton(text: "Privacy", onPressed: null)
                  ]),
                ),
                Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        headerText("Status"),
                        Padding(padding: EdgeInsets.all(8.0))
                      ],
                    )),
                Divider(
                  height: 1,
                  thickness: 2,
                ),
                Container(
                    color: Colors.grey.shade200,
                    child: SizedBox(width: double.infinity, height: 30)),
                Column(
                  children: <Widget>[
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                                child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 26,
                                  child: Text("B"),
                                ),
                                Padding(padding: EdgeInsets.only(left: 16.0)),
                                Expanded(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Column(children: <Widget>[
                                          mainText("My Status"),
                                          subText("Add to my status")
                                        ]),
                                        Row(
                                          children: <Widget>[
                                            IconButton(
                                                iconSize: 36,
                                                icon: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade300,
                                                    child: Icon(
                                                      MyFlutterApp.camera_fill,
                                                      size: 15,
                                                    )),
                                                onPressed: () {}),
                                            Padding(
                                                padding: EdgeInsets.all(2.0)),
                                            IconButton(
                                                iconSize: 36,
                                                icon: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey.shade300,
                                                    child: Icon(
                                                      MyFlutterApp.pencil,
                                                      size: 15,
                                                    )),
                                                onPressed: () {})
                                          ],
                                        )
                                      ]),
                                )
                              ],
                            )),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    Container(
                        color: Colors.grey.shade200,
                        child: SizedBox(width: double.infinity, height: 54)),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    Container(
                      color: Colors.white,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: subText("No recent updates at the moment"),
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    Container(
                        color: Colors.grey.shade200,
                        child: Expanded(
                          child: SizedBox(),
                        )),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
