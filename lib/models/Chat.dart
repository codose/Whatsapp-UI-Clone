import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utils/my_flutter_app_icons.dart';

class Chat {
  String message;
  String name;
  IconData icon;
  String time;

  Chat(this.message, this.name, this.icon, this.time);
}

List<Chat> chats = [
  Chat("Hello bro, hope you slept well", "Ogie Devon", MyFlutterApp.double_tick,
      "12:14 pm"),
  Chat("Hey doug, whatsup?", "Franklin", MyFlutterApp.double_tick, "11:56 am"),
  Chat("I have a Job for you, message me A\$AP", "Michael De Santa",
      MyFlutterApp.double_tick, "11:31 am"),
  Chat("5:14", "Trevor", MyFlutterApp.recorder, "11:22 am"),
  Chat("IMG0004.jpg", "Natalie", MyFlutterApp.sm_camera, "11:20 am"),
  Chat("Gee, Whatsup man", "Lamar", null, "10:31 am"),
  Chat("When are you coming over?", "Gold Viel", MyFlutterApp.double_tick,
      "8:31 am"),
  Chat("Nice One...Hope tosee you soon", "Preacher", null, "31/05/2020"),
  Chat("0:56", "Simpson", MyFlutterApp.recorder, "31/05/2020"),
  Chat("Filled.jpg", "Holt", MyFlutterApp.sm_camera, "31/05/2020")
];
