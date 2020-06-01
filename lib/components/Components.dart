import 'package:flutter/material.dart';

Widget transparentMaterialButton({String text, VoidCallback onPressed}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: MaterialButton(
      minWidth: double.minPositive,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Text(text,
          style:
              TextStyle(color: Colors.blue, fontSize: 20, fontFamily: "SfPro")),
    ),
  );
}

Widget customAppBar(List<Widget> actions) {
  return SizedBox(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: actions,
    ),
  );
}

Padding headerText(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Text(text,
        style: TextStyle(
            fontSize: 34, fontWeight: FontWeight.w600, fontFamily: "SfPro")),
  );
}

Text subText(String text) {
  return Text(text,
      style: TextStyle(
          color: Colors.grey,
          fontFamily: "SfPro",
          fontSize: 14,
          fontWeight: FontWeight.w400));
}

Text mainText(String text) {
  return Text(text,
      style: TextStyle(
          fontFamily: "SfPro", fontSize: 21, fontWeight: FontWeight.w600));
}
