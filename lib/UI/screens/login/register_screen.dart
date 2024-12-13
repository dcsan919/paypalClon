import 'package:flutter/material.dart';
import 'package:paypal1/UI/const.dart';
import 'package:paypal1/UI/layouts/main_layout.dart';
import 'package:paypal1/UI/widgets/button.dart';
import 'package:paypal1/UI/widgets/input.dart';
import 'package:paypal1/UI/widgets/text.dart';
import 'package:paypal1/services/Auth/Auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      backcolor: white,
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Image.asset(
            'assets/images/logo.paypal.png',
            width: 50,
          ),
          SizedBox(
            height: 40,
          ),
          CustomInput(
            fs: 15,
            labelText: "Correo electrónico",
            controller: emailController,
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Row(
              children: [
                CustomText(
                  text: "Utilice el número de télefono en su lugar",
                  fs: 13,
                  color: buttomBlue,
                  weight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationC: buttomBlue,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          CustomInput(
            fs: 15,
            labelText: "Contraseña",
            obscureText: true,
            controller: passwordController,
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Row(
              children: [
                CustomText(
                  text: "¿Ya tienes cuenta?",
                  fs: 13,
                  color: buttomBlue,
                  weight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationC: buttomBlue,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 15,
          ),
          CustomButton(
              text: 'Registrate',
              fs: 14,
              weight: FontWeight.bold,
              onPressed: () {
                register(emailController, passwordController, context);
              },
              horizontal: 135,
              vertical: 14)
        ],
      ),
    );
  }
}
