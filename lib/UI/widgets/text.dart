import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fs;
  final FontWeight? weight;
  final Color? color;
  final TextDecoration? decoration;
  final Color? decorationC;

  const CustomText(
      {Key? key,
      required this.text,
      required this.fs,
      this.weight,
      this.color,
      this.decoration,
      this.decorationC})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.black,
          fontWeight: weight,
          fontSize: fs,
          decoration: decoration,
          decorationColor: decorationC),
    );
  }
}

class CustomTextButtom extends StatelessWidget {
  final String text;
  final double fs;
  final FontWeight? weight;
  final Color? color;
  final TextDecoration? decoration;
  final Color? decorationC;
  final VoidCallback onPressed;

  const CustomTextButtom(
      {Key? key,
      required this.text,
      required this.fs,
      this.weight,
      this.color,
      this.decoration,
      this.decorationC,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(
            Colors.transparent), // Sin efecto al presionar
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(0), // Elimina el contorno redondeado
            side: BorderSide.none, // Sin borde
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: color ?? Colors.black,
            fontWeight: weight,
            fontSize: fs,
            decoration: decoration,
            decorationColor: decorationC),
      ),
    );
  }
}
