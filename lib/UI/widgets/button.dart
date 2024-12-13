import 'package:flutter/material.dart';
import 'package:paypal1/UI/const.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fs;
  final VoidCallback onPressed;
  final double horizontal;
  final double vertical;
  final FontWeight? weight;
  final Color? backcolor;
  final Color? textcolor;

  const CustomButton(
      {Key? key,
      required this.text,
      required this.fs,
      required this.onPressed,
      required this.horizontal,
      required this.vertical,
      this.weight,
      this.backcolor,
      this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        backgroundColor: backcolor ?? buttomBlue,
        foregroundColor: textcolor ?? Colors.white, // Color del texto
        side: BorderSide(
          width: 0.2, // Grosor del borde
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25), // Bordes redondeados
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: fs, fontWeight: weight),
      ),
    );
  }
}
