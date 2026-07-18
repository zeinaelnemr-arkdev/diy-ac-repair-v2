import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecMiscRecord extends FirestoreRecord {
  SpecMiscRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "specId" field.
  String? _specId;
  String get specId => _specId ?? '';
  bool hasSpecId() => _specId != null;

  // "specType" field.
  String? _specType;
  String get specType => _specType ?? '';
  bool hasSpecType() => _specType != null;

  // "miscId" field.
  DocumentReference? _miscId;
  DocumentReference? get miscId => _miscId;
  bool hasMiscId() => _miscId != null;

  // "mandatory" field.
  bool? _mandatory;
  bool get mandatory => _mandatory ?? false;
  bool hasMandatory() => _mandatory != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "lastUpdatedBy" field.
  DocumentReference? _lastUpdatedBy;
  DocumentReference? get lastUpdatedBy => _lastUpdatedBy;
  bool hasLastUpdatedBy() => _lastUpdatedBy != null;

  // "lastUpdatedAt" field.
  DateTime? _lastUpdatedAt;
  DateTime? get lastUpdatedAt => _lastUpdatedAt;
  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  void _initializeFields() {
    _specId = snapshotData['specId'] as String?;
    _specType = snapshotData['specType'] as String?;
    _miscId = snapshotData['miscId'] as DocumentReference?;
    _mandatory = snapshotData['mandatory'] as bool?;
    _notes = snapshotData['notes'] as String?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SpecMisc');

  static Stream<SpecMiscRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpecMiscRecord.fromSnapshot(s));

  static Future<SpecMiscRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpecMiscRecord.fromSnapshot(s));

  static SpecMiscRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecMiscRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecMiscRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecMiscRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecMiscRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecMiscRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecMiscRecordData({
  String? specId,
  String? specType,
  DocumentReference? miscId,
  bool? mandatory,
  String? notes,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'specId': specId,
      'specType': specType,
      'miscId': miscId,
      'mandatory': mandatory,
      'notes': notes,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecMiscRecordDocumentEquality implements Equality<SpecMiscRecord> {
  const SpecMiscRecordDocumentEquality();

  @override
  bool equals(SpecMiscRecord? e1, SpecMiscRecord? e2) {
    return e1?.specId == e2?.specId &&
        e1?.specType == e2?.specType &&
        e1?.miscId == e2?.miscId &&
        e1?.mandatory == e2?.mandatory &&
        e1?.notes == e2?.notes &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt;
  }

  @override
  int hash(SpecMiscRecord? e) => const ListEquality().hash([
        e?.specId,
        e?.specType,
        e?.miscId,
        e?.mandatory,
        e?.notes,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is SpecMiscRecord;
}
