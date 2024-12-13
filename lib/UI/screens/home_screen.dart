import 'package:flutter/material.dart';
import 'package:paypal1/UI/layouts/main_layout.dart';
// import 'package:paypal1/UI/widgets/button.dart';
import 'package:paypal1/UI/widgets/container.dart';
import 'package:paypal1/UI/widgets/text.dart';
import '../const.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          icon: Icon(Icons.person)),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 15),
        // Contenedor 1 transeferencisa
        const CustomContainer(
            height: 200,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.payments,
                      color: Colors.green,
                    ),
                    SizedBox(width: 10),
                    CustomText(
                      text: "No hay pagos nuevos",
                      fs: 13,
                      // weight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                CustomText(
                  text: '\$0.00',
                  fs: 28,
                ),
                SizedBox(height: 35),
                CustomText(
                  text: 'Transferencias diarias',
                  fs: 12,
                ),
              ],
            )),
        const SizedBox(
          height: 25,
        ),
        // Contendor 2 pagos
        CustomContainer(
            borderBL: 0,
            borderBR: 0,
            height: 130,
            body: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/mercadolibre.png',
                        width: 40, height: 40),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Fashion Choises (MERCADO LIBRE).",
                          fs: 13,
                          weight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "12 oct",
                          fs: 12,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "Remobolso",
                        fs: 12,
                        color: Color.fromARGB(255, 122, 122, 122)),
                    CustomText(
                      text: "+\$429.39 MXN",
                      fs: 14,
                      weight: FontWeight.bold,
                      color: addGreen,
                    ),
                  ],
                ),
              ],
            )),
        const SizedBox(
          height: 3,
        ),
        CustomContainer(
            borderBL: 0,
            borderBR: 0,
            borderTL: 0,
            borderTR: 0,
            height: 130,
            body: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/mercadolibre.png',
                        width: 40, height: 40),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Fashion Choises (MERCADO LIBRE).",
                          fs: 13,
                          weight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "12 oct",
                          fs: 12,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "Pago - Remobolso",
                        fs: 12,
                        color: Color.fromARGB(255, 122, 122, 122)),
                    CustomText(
                      text: "-\$429.39 MXN",
                      fs: 14,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            )),
        const SizedBox(
          height: 3,
        ),
        //Contenedor de ver más
        const CustomContainer(
          padding: 0,
          height: 50,
          borderTL: 0,
          borderTR: 0,
          body: Center(
              child: CustomText(
            text: "Ver más",
            fs: 13,
            color: primaryBlue,
            weight: FontWeight.bold,
          )),
        ),
        const SizedBox(
          height: 25,
        ),
        //Txt Enviar Pago
        const Padding(
          padding: EdgeInsets.only(left: 13, bottom: 12, top: 10),
          child: CustomText(
            text: "Enviar pago",
            fs: 15,
            weight: FontWeight.bold,
          ),
        ),
        CustomContainer(
            height: 137,
            body: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/pay.png",
                      width: 70,
                      height: 70,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CustomText(text: "Pague desde su teléfono", fs: 17),
                          SizedBox(
                            height: 3,
                          ),
                          CustomText(
                              text: "Por las cosas que le encantan", fs: 14)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomText(
                  text: 'Enviar ahora',
                  fs: 12,
                  color: primaryBlue,
                  decoration: TextDecoration.underline,
                  decorationC: primaryBlue,
                  weight: FontWeight.bold,
                ),
              ],
            )),
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 13, right: 13, bottom: 25, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Eche una mano",
                fs: 15,
                weight: FontWeight.bold,
              ),
              CustomText(
                text: "Ver más >",
                fs: 12,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomContainer(
                  height: 190,
                  width: 320,
                  bcolor: Colors.grey[900],
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/mexicoI.png",
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const CustomText(
                          text: "PATRONATO PRO ZONA MAZAHUA A. C.",
                          fs: 22,
                          weight: FontWeight.bold,
                          color: Colors.white)
                    ],
                  )),
              CustomContainer(
                  fpaddingL: 5,
                  height: 190,
                  width: 320,
                  bcolor: Colors.grey[900],
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/pymo.png",
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      const CustomText(
                          text: "Entrelazando México AC",
                          fs: 22,
                          weight: FontWeight.bold,
                          color: Colors.white)
                    ],
                  )),
              CustomContainer(
                  fpaddingL: 5,
                  height: 190,
                  width: 320,
                  bcolor: Color(0xFF2E7D32),
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/teleton.png",
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const CustomText(
                          text: "Fundación Teletón México, A.C.",
                          fs: 22,
                          weight: FontWeight.bold,
                          color: Colors.white)
                    ],
                  )),
              CustomContainer(
                  fpaddingL: 5,
                  height: 190,
                  width: 320,
                  bcolor: Color(0xFF6A1B9A),
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/TECHO.PNG",
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const CustomText(
                          text: "UN TECHO PARA MI PAÍS MÉXICO A.C.",
                          fs: 22,
                          weight: FontWeight.bold,
                          color: Colors.white)
                    ],
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        // Stack(
        //   children: [
        //     Positioned(
        //       top: 0,
        //       left: 0,
        //       child: CustomButton(
        //           text: "Enviar",
        //           onPressed: () {},
        //           horizontal: 40,
        //           vertical: 40),
        //     ),
        //     Positioned(
        //       bottom: 0,
        //       right: 0,
        //       child: CustomButton(
        //           text: "Solicitar",
        //           onPressed: () {},
        //           horizontal: 40,
        //           vertical: 40),
        //     ),
        //   ],
        // ),
      ]),
    );
  }
}
