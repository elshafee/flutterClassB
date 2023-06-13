import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final _databaseName = "MyTodos.db";
  static final _databaseVersion = 1;
  static final table = "my_table";
  static final columnId = 'id';
  static final columnName = 'todo';
  static Database? _database;

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
   CREATE TABLE $table(
   $columnId INTEGER PRIMARY KEY,
   $columnName TEXT NOT NULL
   ) 
    ''');
  }

  Future<int?> insert(Map<String, dynamic> todo) async {
    Database? db = await instance.database;
    return db?.insert(table, todo);
  }

  Future<int?> delete(int id) async {
    Database? db = await instance.database;
    return db?.delete(
      table,
      where: "id =?",
      whereArgs: [id],
    );
  }

  Future<List<Map<String, dynamic>>?> querryAllTodos() async {
    Database? db = await instance.database;
    return await db?.query(table);
  }
}
