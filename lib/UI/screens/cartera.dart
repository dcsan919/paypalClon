import 'package:flutter/material.dart';
import 'package:paypal1/UI/layouts/main_layout.dart';
// import 'package:paypal1/UI/widgets/container.dart';
// import 'package:paypal1/UI/layouts/navbar.dart';
// import 'package:paypal1/UI/widgets/text.dart';

class CarteraScreen extends StatefulWidget {
  const CarteraScreen({super.key});

  @override
  State<CarteraScreen> createState() => _CarteraScreenState();
}

class _CarteraScreenState extends State<CarteraScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Text("Hola cartera"),
    );
  }
}
