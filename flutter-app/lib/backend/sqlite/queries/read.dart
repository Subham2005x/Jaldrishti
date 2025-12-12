import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN READATA
Future<List<ReadataRow>> performReadata(
  Database database,
) {
  final query = '''
SELECT *
FROM ReportData
ORDER BY datetime(timestamp) DESC
LIMIT :limit;

''';
  return _readQuery(database, query, (d) => ReadataRow(d));
}

class ReadataRow extends SqliteRow {
  ReadataRow(Map<String, dynamic> data) : super(data);
}

/// END READATA

/// BEGIN READATAUNSYNC
Future<List<ReadataUNSYNCRow>> performReadataUNSYNC(
  Database database, {
  DateTime? timestamp,
  String? description,
  int? isSynced,
  String? location,
  String? hazardtype,
  String? userid,
}) {
  final query = '''
SELECT *
FROM ReportData
WHERE isSynced = 0
ORDER BY datetime(timestamp) ASC;

''';
  return _readQuery(database, query, (d) => ReadataUNSYNCRow(d));
}

class ReadataUNSYNCRow extends SqliteRow {
  ReadataUNSYNCRow(Map<String, dynamic> data) : super(data);

  String get userid => data['userid'] as String;
  DateTime? get timestamp => data['timestamp'] as DateTime?;
  String? get description => data['description'] as String?;
  int? get isSynced => data['isSynced'] as int?;
  String? get location => data['location'] as String?;
  String? get hazardtype => data['hazardtype'] as String?;
}

/// END READATAUNSYNC
