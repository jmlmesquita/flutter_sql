import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database db;

class DBCreator{

  void initDatabase() async {
    String path=await getCaminhoBanco('db_aplicativo');
    print(path);
  }

  Future<String> getCaminhoBanco(String dbName) async {
    String databasePath=await getDatabasesPath();
    print(databasePath);
    String path = join(databasePath,dbName);

    if(!await Directory(dirname(path)).exists()){
      await Directory(dirname(path)).create(recursive:true);
    }

    return path;
  }

  void criarTabelas(Database db, int version) async {
    await criarTabelaLogin(db);
  }

  void criarTabelaLogin(Database db) async {
    String sql = """create table tb_login(
      id integer primary key autoincrement not null,
      usuario text not null,
      senha text not null);
      """;

    await db.execute(sql);
  }
}