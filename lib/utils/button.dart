import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
