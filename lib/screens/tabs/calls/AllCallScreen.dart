import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/Call.dart';
import 'package:whatsapp_ui_clone/components/Components.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

class AllCallScreen extends StatefulWidget {
  @override
  _AllCallScreenState createState() => _AllCallScreenState();
}

List<Call> getMissed() {
  List<Call> missed = [];
  for (int i = 0; i < calls.length; i++) {
    if (calls[i].message == "Missed") {
      missed.add(calls[i]);
    }
  }
  return missed;
}

class _AllCallScreenState extends State<AllCallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) {
        return callItem(calls[index]);
      },
    );
  }
}

class MissedCallScreen extends StatefulWidget {
  @override
  _MissedCallScreenState createState() => _MissedCallScreenState();
}

class _MissedCallScreenState extends State<MissedCallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: getMissed().length,
      itemBuilder: (context, index) {
        return callItem(getMissed()[index]);
      },
    );
  }
}

Widget callItem(Call call) {
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
                  CircleAvatar(radius: 52 / 2, child: Text(call.name[0])),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(call.name,
                                  style: TextStyle(
                                      fontFamily: "SfPro",
                                      fontSize: 19,
                                      color: call.message == "Missed"
                                          ? Colors.red
                                          : Colors.black,
                                      fontWeight: FontWeight.w400)),
                              subText(call.time)
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 4.0)),
                        Row(
                          children: [
                            Icon(MyFlutterApp.call_filled,
                                size: 12, color: Colors.grey),
                            Padding(padding: EdgeInsets.only(left: 12.0)),
                            subText(call.message),
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
}
