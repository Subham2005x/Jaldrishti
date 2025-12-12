import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// This contains Reports of all the Users
class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "email" field.
  DocumentReference? _email;
  DocumentReference? get email => _email;
  bool hasEmail() => _email != null;

  // "hazardtype" field.
  String? _hazardtype;
  String get hazardtype => _hazardtype ?? '';
  bool hasHazardtype() => _hazardtype != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "severitylevel" field.
  double? _severitylevel;
  double get severitylevel => _severitylevel ?? 0.0;
  bool hasSeveritylevel() => _severitylevel != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "media" field.
  String? _media;
  String get media => _media ?? '';
  bool hasMedia() => _media != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "isSynced" field.
  int? _isSynced;
  int get isSynced => _isSynced ?? 0;
  bool hasIsSynced() => _isSynced != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _email = snapshotData['email'] as DocumentReference?;
    _hazardtype = snapshotData['hazardtype'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _severitylevel = castToType<double>(snapshotData['severitylevel']);
    _description = snapshotData['description'] as String?;
    _media = snapshotData['media'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _isSynced = castToType<int>(snapshotData['isSynced']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  DocumentReference? uid,
  DocumentReference? email,
  String? hazardtype,
  LatLng? location,
  double? severitylevel,
  String? description,
  String? media,
  DateTime? timestamp,
  int? isSynced,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'email': email,
      'hazardtype': hazardtype,
      'location': location,
      'severitylevel': severitylevel,
      'description': description,
      'media': media,
      'timestamp': timestamp,
      'isSynced': isSynced,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.email == e2?.email &&
        e1?.hazardtype == e2?.hazardtype &&
        e1?.location == e2?.location &&
        e1?.severitylevel == e2?.severitylevel &&
        e1?.description == e2?.description &&
        e1?.media == e2?.media &&
        e1?.timestamp == e2?.timestamp &&
        e1?.isSynced == e2?.isSynced;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.email,
        e?.hazardtype,
        e?.location,
        e?.severitylevel,
        e?.description,
        e?.media,
        e?.timestamp,
        e?.isSynced
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
