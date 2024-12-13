import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paypal1/DB/User.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final UserController _userController = UserController();

Future<dynamic> login(dynamic emailController, dynamic passwordController,
    dynamic context) async {
  if (emailController.text.trim().isEmpty ||
      passwordController.text.trim().isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Por favor, completa todos los campos.'),
      ),
    );
    return;
  }
  try {
    await _auth.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    User? user = _auth.currentUser;
    String userEmail = user?.email ?? '';
    await _userController.create(userEmail);

    Navigator.pushNamed(context, '/home');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              'Error de autenticación. Por favor, verifica tus credenciales.')),
    );
  }
}

Future<dynamic> register(dynamic emailController, dynamic passwordController,
    dynamic context) async {
  if (emailController.text.trim().isEmpty ||
      passwordController.text.trim().isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Por favor, completa todos los campos.'),
      ),
    );
    return;
  }
  if (passwordController.text.trim().length < 6) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('La contraseña debe ser mayor a 6 caracteres.'),
      ),
    );
    return;
  }

  try {
    await _auth.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    User? user = _auth.currentUser;
    String userEmail = user?.email ?? '';

    // Store the email in SQLite
    await _userController.create(userEmail);
    // await _userController.create('test@example.com');
    Navigator.pushNamed(context, '/home');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('El correo ya ha sido registrado anteriormente.'),
        ),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              'Error de autenticación. Por favor, verifica tus credenciales.')),
    );
  }
}
