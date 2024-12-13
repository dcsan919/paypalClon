import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBConfig {
  static final DBConfig _instance = DBConfig._internal();
  static Database? _database;

  factory DBConfig() {
    return _instance;
  }

  DBConfig._internal();

  Future<Database> get database async {
    if (_database == null || !_database!.isOpen) {
      _database = await _initDB();
    }

    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'mydatabase.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        email TEXT UNIQUE)
      ''');
  }

  void deleteDatabaseFile() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'mydatabase.db');
    await deleteDatabase(path);
    print('Base de datos eliminada.');
  }
}
