import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTREPORT
Future performInsertReport(
  Database database, {
  String? userUid,
  String? email,
  String? hazardtype,
  String? location,
  double? severityLevel,
  String? description,
  String? media,
  DateTime? timestamp,
  int? isSynced,
}) {
  final query = '''
INSERT INTO ReportData
('User UID', email, hazardtype, location, severityLevel, description, media, timestamp, isSynced)
VALUES
('${userUid}', '${email}', '${hazardtype}', '${location}', ${severityLevel}, '${description}', '${media}', '${timestamp}', ${isSynced});

''';
  return database.rawQuery(query);
}

/// END INSERTREPORT

/// BEGIN UPDATEREPORT
Future performUpdateReport(
  Database database,
) {
  final query = '''
UPDATE ReportData
SET email         = :email,
    hazardtype    = :hazardtype,
    location      = :location,
    severityLevel = :severityLevel,
    description   = :description,
    media         = :media,
    timestamp     = :timestamp,
    isSynced      = :isSynced
WHERE "User UID" = :user_uid
  AND timestamp  = :original_timestamp;

''';
  return database.rawQuery(query);
}

/// END UPDATEREPORT

/// BEGIN UPDATESYNC
Future performUpdateSYNC(
  Database database,
) {
  final query = '''
UPDATE ReportData
SET isSynced = 1
WHERE "User UID" = :user_uid
  AND timestamp  = :timestamp;
''';
  return database.rawQuery(query);
}

/// END UPDATESYNC
