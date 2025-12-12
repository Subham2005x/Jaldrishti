import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'jaldrishti',
      'jaldrishti.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ReadataRow>> readata() => performReadata(
        _database,
      );

  Future<List<ReadataUNSYNCRow>> readataUNSYNC({
    DateTime? timestamp,
    String? description,
    int? isSynced,
    String? location,
    String? hazardtype,
    String? userid,
  }) =>
      performReadataUNSYNC(
        _database,
        timestamp: timestamp,
        description: description,
        isSynced: isSynced,
        location: location,
        hazardtype: hazardtype,
        userid: userid,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future insertReport({
    String? userUid,
    String? email,
    String? hazardtype,
    String? location,
    double? severityLevel,
    String? description,
    String? media,
    DateTime? timestamp,
    int? isSynced,
  }) =>
      performInsertReport(
        _database,
        userUid: userUid,
        email: email,
        hazardtype: hazardtype,
        location: location,
        severityLevel: severityLevel,
        description: description,
        media: media,
        timestamp: timestamp,
        isSynced: isSynced,
      );

  Future updateReport() => performUpdateReport(
        _database,
      );

  Future updateSYNC() => performUpdateSYNC(
        _database,
      );

  /// END UPDATE QUERY CALLS
}
