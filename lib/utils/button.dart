import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ButtonCustom extends StatelessWidget {
  String text;
  Color? color;
  VoidCallback? onbuttonpressed;
  ButtonCustom({super.key, required this.text, this.color,this.onbuttonpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10))),
            minimumSize: WidgetStateProperty.all(const Size(280, 50)),
            foregroundColor: WidgetStateProperty.all(Colors.black),
            backgroundColor: WidgetStatePropertyAll(color!)),
        onPressed: onbuttonpressed,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
