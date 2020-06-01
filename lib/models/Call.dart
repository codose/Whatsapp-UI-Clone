import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

class Call {
  String message;
  String name;
  IconData icon;
  String time;

  Call(this.message, this.name, this.time);
}

List<Call> calls = [
  Call("Ongoing", "Ogie Devon", "12:14 pm"),
  Call("Outgoing", "Franklin", "11:56 am"),
  Call("Missed", "Michael De Santa", "11:31 am"),
  Call("Incoming", "Trevor", "11:22 am"),
  Call("Missed", "Natalie", "11:20 am"),
  Call("Incoming", "Lamar", "10:31 am"),
  Call("Outgoing", "Gold Viel", "8:31 am"),
  Call("Outgoing", "Preacher", "31/05/2020"),
  Call("Outgoing", "Simpson", "31/05/2020"),
  Call("Missed", "Holt", "31/05/2020")
];
