import 'package:flutter/material.dart';
import 'package:paypal1/UI/layouts/navbar.dart';
import 'package:paypal1/UI/screens/login/login_screen.dart';
import 'package:paypal1/UI/screens/login/register_screen.dart';
import 'package:paypal1/UI/screens/login/save_login_screen.dart';
import 'package:paypal1/UI/screens/profile/profile.dart';
import 'package:paypal1/UI/themes/app_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paypal',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: SaveLoginScreen(),
      routes: {
        '/savelogin': (context) => SaveLoginScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => CustomNavbar(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
