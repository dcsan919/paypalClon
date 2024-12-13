import 'package:flutter/material.dart';
import 'package:paypal1/UI/layouts/main_layout.dart';
// import 'package:paypal1/UI/widgets/container.dart';
// import 'package:paypal1/UI/layouts/navbar.dart';
// import 'package:paypal1/UI/widgets/text.dart';

class PagosScreen extends StatefulWidget {
  const PagosScreen({super.key});

  @override
  State<PagosScreen> createState() => _PagosScreenState();
}

class _PagosScreenState extends State<PagosScreen> {
  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      body: Text('holas'),
    );
  }
}
