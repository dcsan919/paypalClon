import 'package:flutter/material.dart';
import 'package:paypal1/UI/const.dart';
import 'package:paypal1/UI/layouts/main_layout.dart';
import 'package:paypal1/UI/widgets/button.dart';
import 'package:paypal1/UI/widgets/input.dart';
import 'package:paypal1/UI/widgets/text.dart';
import 'package:paypal1/services/Auth/Auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  text: "¿Ha olvidado su contraseña?",
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
          CustomButton(
              text: 'Iniciar sesión',
              fs: 14,
              weight: FontWeight.bold,
              onPressed: () {
                login(emailController, passwordController, context);
              },
              horizontal: 135,
              vertical: 14),
          SizedBox(
            height: 15,
          ),
          CustomButton(
              backcolor: Colors.transparent,
              textcolor: black,
              text: 'Abrir cuenta',
              fs: 14,
              weight: FontWeight.bold,
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              horizontal: 135,
              vertical: 14)
        ],
      ),
    );
  }
}
