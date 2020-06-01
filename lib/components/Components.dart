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
