import 'package:flutter/material.dart';
import 'package:paypal1/UI/const.dart';
import 'package:paypal1/UI/layouts/main_layout.dart';
import 'package:paypal1/UI/widgets/button.dart';
import 'package:paypal1/UI/widgets/container.dart';
import 'package:paypal1/UI/widgets/text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: CustomText(
          text: "Perfil",
          fs: 15,
          weight: FontWeight.bold,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            //PRIMER CONTENEDOR
            CustomContainer(
                fpaddingL: 20,
                fpaddingR: 20,
                height: 250,
                padding: 0,
                body: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/banner1.jpg',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Avatar
                          Positioned(
                            right: 0,
                            left: 0,
                            bottom: -30,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: white,
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.person_outline,
                                    size: 65,
                                  ),
                                  Positioned(
                                      top: 15,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 25,
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      137, 0, 0, 0),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  80),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  80))),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 5,
                                            ),
                                          ),
                                          const Positioned(
                                            top: 20,
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: Icon(
                                              Icons.camera_enhance_outlined,
                                              size: 20,
                                              color: white,
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ), //Fin del avatar
                        ],
                      ),
                    ),
                    const SizedBox(height: 45),
                    const CustomText(
                      text: 'david pool',
                      fs: 20,
                      weight: FontWeight.bold,
                    ),
                    const CustomText(
                      text: '@davidpool244',
                      fs: 14,
                      color: buttomBlue,
                      decoration: TextDecoration.underline,
                      decorationC: buttomBlue,
                    ),
                    CustomButton(
                        backcolor: Colors.transparent,
                        text: 'Editar',
                        textcolor: black,
                        fs: 13,
                        onPressed: () {},
                        horizontal: 13,
                        vertical: 8),
                    const SizedBox(height: 6),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            //SEGUNDO CONTENDOR
            CustomContainer(
                fpaddingL: 20,
                fpaddingR: 20,
                height: 280,
                body: Column(
                  children: [
                    _profile(Icons.person_outline_outlined,
                        "Información personal", () {}),
                    _profile(Icons.security_outlined,
                        "Inicio de sesión y seguridad", () {}),
                    _profile(
                        Icons.visibility_outlined, "Datos y privacidad", () {}),
                    _profile(Icons.notifications_outlined, "Datos y privacidad",
                        () {}),
                    _profile(Icons.attach_money_outlined,
                        "Preferencias de marketing", () {}),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            //TERCER CONTENEDOR
            CustomContainer(
                fpaddingL: 20,
                fpaddingR: 20,
                height: 136,
                body: Column(
                  children: [
                    _profile(
                        Icons.message_outlined, "Centro de mensajes", () {}),
                    _profile(Icons.help_outline, "Ayuda", () {}),
                  ],
                )),
            //CUARTO CONTENEDOR
            const SizedBox(
              height: 20,
            ),
            CustomContainer(
                fpaddingL: 20,
                fpaddingR: 20,
                padding: 0,
                height: 70,
                body: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    children: [
                      _profile(Icons.delete_outline, "Cerrar su cuenta", () {}),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            //QUINTO CONTENEDOR
            CustomContainer(
                padding: 0,
                height: 70,
                fpaddingL: 20,
                fpaddingR: 20,
                body: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    children: [
                      _profile(Icons.exit_to_app_outlined, "Cerrar sesión", () {
                        Navigator.pushNamed(context, '/savelogin');
                      }),
                    ],
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}

Widget _profile(IconData icon, String text, VoidCallback onPressed) {
  return Row(
    children: [
      Icon(
        icon,
        color: buttomBlue,
      ),
      CustomTextButtom(text: text, fs: 13, onPressed: onPressed)
    ],
  );
}
