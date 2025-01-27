import 'package:habbit/data/data.dart';
import 'package:habbit/utils/db_keys.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class HabitDatasource {
  static final HabitDatasource _instace = HabitDatasource._();

  factory HabitDatasource() => _instace;

  HabitDatasource._() {
    _initDB();
  }

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, DBKeys.dbName);
    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE ${DBKeys.dbTable}(
    ${DBKeys.idColumn}INTEGER PRIMATY KEY AUTOINCREMENT,
    ${DBKeys.titleColumn} TEXT,
    ${DBKeys.noteColumn} TEXT,
    ${DBKeys.dateColumn} TEXT,
    ${DBKeys.timeColumn} TEXT,
    ${DBKeys.categoryColumn} TEXT,
    ${DBKeys.isCompletedColumn} INTEGER,
    )
      ''');
  }

  Future<int> addHabit(Habit habit) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.insert(
          DBKeys.dbTable,
          habit.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      },
    );
  }

  Future<int> updateHabit(Habit habit) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.update(
          DBKeys.dbTable,
          habit.toJson(),
          where: 'id = ?',
          whereArgs: [habit.id],
        );
      },
    );
  }

  Future<int> deleteHabit(Habit habit) async {
    final db = await database;
    return db.transaction(
      (txn) async {
        return await txn.delete(
          DBKeys.dbTable,
          where: 'id = ?',
          whereArgs: [habit.id],
        );
      },
    );
  }

  Future<List<Habit>> getAllHabits() async {
    final db = await database;
    final List<Map<String, dynamic>> data = await db.query(
      DBKeys.dbTable,
      orderBy: "id DESC",
    );
    return List.generate(
      data.length, 
      (index) => Habit.fromJson(data[index])
    );
  }
}
