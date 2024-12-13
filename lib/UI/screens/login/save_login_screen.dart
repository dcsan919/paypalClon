import 'package:flutter/material.dart';
import 'package:paypal1/DB/User.dart';
import 'package:paypal1/UI/const.dart';
import 'package:paypal1/UI/layouts/main_layout.dart';
import 'package:paypal1/UI/widgets/button.dart';
import 'package:paypal1/UI/widgets/input.dart';
import 'package:paypal1/UI/widgets/text.dart';
import 'package:paypal1/services/Auth/Auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SaveLoginScreen extends StatefulWidget {
  const SaveLoginScreen({Key? key}) : super(key: key);

  @override
  State<SaveLoginScreen> createState() => _SaveLoginScreenState();
}

class _SaveLoginScreenState extends State<SaveLoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String email = '';

  @override
  void initState() {
    super.initState();
    _obtenerEmail();
  }

  Future<void> _obtenerEmail() async {
    final UserController userController = UserController();
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? user = _auth.currentUser;
    String userEmail = user?.email ?? '';

    final emailObtenido = await userController.getUserByEmail(userEmail);
    setState(() {
      email = emailObtenido;
      emailController.text = emailObtenido;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      backcolor: white,
      body: Column(
        children: [
          SizedBox(
            height: 270,
          ),
          Image.asset(
            'assets/images/logo.paypal.png',
            width: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 15, bottom: 5, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: buttomBlue,
                      child: Icon(
                        Icons.person,
                        color: white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "david pool",
                            fs: 12,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                              text: email.isNotEmpty ? email : 'Cargando...',
                              fs: 12),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTextButtom(
                  text: "Cambiar",
                  color: buttomBlue,
                  decoration: TextDecoration.underline,
                  decorationC: buttomBlue,
                  fs: 13,
                  weight: FontWeight.bold,
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                )
              ],
            ),
          ),
          CustomInput(
            fs: 15,
            labelText: "Contraseña",
            obscureText: true,
            controller: passwordController,
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
            height: 22,
          ),
          CustomButton(
              text: 'Iniciar sesión',
              fs: 14,
              weight: FontWeight.bold,
              onPressed: () {
                login(emailController, passwordController, context);
              },
              horizontal: 135,
              vertical: 14)
        ],
      ),
    );
  }
}
