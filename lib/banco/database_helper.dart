import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  static final nomeBanco = 'Solucao_Completa.db';
  static Database? db;

  static Future<Database> getDatabase() async{
    if(db != null) return db!;

    Directory pastaBanco = await getApplicationDocumentsDirectory();
    String caminho = join(pastaBanco.path, nomeBanco);
    if(!File(caminho).existsSync()){
      ByteData data = await rootBundle.load('assets/$nomeBanco');
      List<int> bytes = data.buffer.asInt8List(data.offsetInBytes, data.lengthInBytes);
      await File(caminho).writeAsBytes(bytes);
    }
    db = await openDatabase(caminho);
    return db!;
  }
}