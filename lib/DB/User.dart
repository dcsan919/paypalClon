import 'package:paypal1/DB/DB.dart';

class UserController {
  final DBConfig _dbConfig = DBConfig();

  Future<String?> create(String email) async {
    final db = await _dbConfig.database;
    if (db.isOpen) {
      try {
        bool exists = await isEmailExists(email);
        if (exists) {
          // Si el correo ya existe, lo retornamos
          print(
              'El correo ya está registrado en la base de datos sqlite: $email');
          return await getUserByEmail(email);
        }
        // Si no existe, lo insertamos
        await db.insert('users', {'email': email});
        print('Correo electrónico almacenado correctamente: $email');
        return email; // También retornamos el email si lo insertamos
      } catch (e) {
        print('Error al almacenar el correo electrónico: $e');
        return null;
      }
    } else {
      print("La base de datos no está abierta");
      return null;
    }
  }

  Future<bool> isEmailExists(String email) async {
    final db = await _dbConfig.database;
    final result = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );
    return result.isNotEmpty;
  }

  Future<String> getUserEmail() async {
    final db = await _dbConfig.database;
    final result = await db.query('users', orderBy: 'id DESC', limit: 1);

    if (result.isNotEmpty) {
      return result.first['email'] as String;
    } else {
      print("No se encontró el correo en la base de datos.");
      return '';
    }
  }

  Future<String> getUserByEmail(String email) async {
    final db = await _dbConfig.database;
    final result = await db.query('users',
        where: 'email = ?', whereArgs: [email], limit: 1);

    if (result.isNotEmpty) {
      return result.first['email'] as String;
    } else {
      print("No se encontró el correo en la base de datos.");
      return '';
    }
  }
}
