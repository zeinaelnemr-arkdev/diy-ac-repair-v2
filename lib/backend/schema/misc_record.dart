import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MiscRecord extends FirestoreRecord {
  MiscRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "lastUpdatedBy" field.
  DocumentReference? _lastUpdatedBy;
  DocumentReference? get lastUpdatedBy => _lastUpdatedBy;
  bool hasLastUpdatedBy() => _lastUpdatedBy != null;

  // "lastUpdatedAt" field.
  DateTime? _lastUpdatedAt;
  DateTime? get lastUpdatedAt => _lastUpdatedAt;
  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _description = snapshotData['description'] as String?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Misc');

  static Stream<MiscRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MiscRecord.fromSnapshot(s));

  static Future<MiscRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MiscRecord.fromSnapshot(s));

  static MiscRecord fromSnapshot(DocumentSnapshot snapshot) => MiscRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MiscRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MiscRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MiscRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MiscRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMiscRecordData({
  String? id,
  String? description,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'description': description,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class MiscRecordDocumentEquality implements Equality<MiscRecord> {
  const MiscRecordDocumentEquality();

  @override
  bool equals(MiscRecord? e1, MiscRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.description == e2?.description &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt;
  }

  @override
  int hash(MiscRecord? e) => const ListEquality()
      .hash([e?.id, e?.description, e?.lastUpdatedBy, e?.lastUpdatedAt]);

  @override
  bool isValidKey(Object? o) => o is MiscRecord;
}
