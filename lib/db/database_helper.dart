import 'package:path/path.dart';
import 'package:routine/models/group.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future<Database> database() async {
    return openDatabase(join(await getDatabasesPath(), 'routine.db'),
        onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE groups(id INTEGER PRIMARY KEY, title TEXT, description TEXT)");
    });
  }

  Future<void> insertGroup(Group group) async {
    Database _db = await database();
    await _db.insert(
      "groups",
      group.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
