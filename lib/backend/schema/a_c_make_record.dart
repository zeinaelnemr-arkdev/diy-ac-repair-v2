import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ACMakeRecord extends FirestoreRecord {
  ACMakeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "logoUrl" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

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
    _name = snapshotData['name'] as String?;
    _logoUrl = snapshotData['logoUrl'] as String?;
    _description = snapshotData['description'] as String?;
    _approved = snapshotData['approved'] as bool?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ACMake');

  static Stream<ACMakeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ACMakeRecord.fromSnapshot(s));

  static Future<ACMakeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ACMakeRecord.fromSnapshot(s));

  static ACMakeRecord fromSnapshot(DocumentSnapshot snapshot) => ACMakeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ACMakeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ACMakeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ACMakeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ACMakeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createACMakeRecordData({
  String? id,
  String? name,
  String? logoUrl,
  String? description,
  bool? approved,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'logoUrl': logoUrl,
      'description': description,
      'approved': approved,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ACMakeRecordDocumentEquality implements Equality<ACMakeRecord> {
  const ACMakeRecordDocumentEquality();

  @override
  bool equals(ACMakeRecord? e1, ACMakeRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.description == e2?.description &&
        e1?.approved == e2?.approved &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt;
  }

  @override
  int hash(ACMakeRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.logoUrl,
        e?.description,
        e?.approved,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ACMakeRecord;
}
