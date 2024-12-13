import 'package:flutter/material.dart';
import 'package:paypal1/UI/const.dart';

class CustomInput extends StatefulWidget {
  final double fs;
  final String labelText;
  final FontWeight? weight;
  final Color? color;
  final TextDecoration? decoration;
  final Color? decorationC;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomInput({
    Key? key,
    required this.fs,
    required this.labelText,
    this.weight,
    this.color,
    this.decoration,
    this.decorationC,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TextField(
          controller: widget.controller,
          obscureText: _obscureText,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: buttomBlue,
                width: 2.0, // Color del borde enfocado
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red, // Color del borde en caso de error
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey.shade400, // Color del borde deshabilitado
              ),
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(fontSize: 14, color: black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: _toggleObscureText,
                  )
                : null, // Si obscureText es false, no muestra el botón
          ),
          style: TextStyle(
            color: widget.color ?? Colors.black,
            fontWeight: widget.weight,
            fontSize: widget.fs,
            decoration: widget.decoration,
            decorationColor: widget.decorationC,
          ),
        ),
      ),
    );
  }
}
