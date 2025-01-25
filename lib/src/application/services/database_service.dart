import 'package:debts_app/src/domain/models/contact_model.dart';
import 'package:debts_app/src/domain/models/debt_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  late Database _database;
  Future<void> init() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'debts.db'),
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE debts(id INTEGER PRIMARY KEY, contactId INTEGER, description TEXT, amount DOUBLE, date TEXT)',
        );
        return db.execute(
          'CREATE TABLE contacts(id INTEGER PRIMARY KEY, name TEXT, photoUrl BLOB NOT NULL)',
        );
      },
      version: 1,
    );
  }

  Future<void> addContact(ContactModel contact) async {
    await _database.insert(
      'contacts',
      contact.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<ContactModel>> getContacts() async {
    final List<Map<String, dynamic>> maps = await _database.query('contacts');
    return maps.map((map) => ContactModel.fromJson(map)).toList();
  }

  Future<void> addDebt(DebtModel debt) async {
    await _database.insert(
      'debts',
      debt.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<DebtModel>> getDebts() async {
    final List<Map<String, dynamic>> maps = await _database.query('debts');
    return maps.map((map) => DebtModel.fromJson(map)).toList();
  }
}
