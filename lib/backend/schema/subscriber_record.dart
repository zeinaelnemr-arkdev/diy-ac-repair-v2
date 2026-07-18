import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubscriberRecord extends FirestoreRecord {
  SubscriberRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subscriber');

  static Stream<SubscriberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubscriberRecord.fromSnapshot(s));

  static Future<SubscriberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubscriberRecord.fromSnapshot(s));

  static SubscriberRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubscriberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubscriberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubscriberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubscriberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubscriberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubscriberRecordData({
  String? email,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubscriberRecordDocumentEquality implements Equality<SubscriberRecord> {
  const SubscriberRecordDocumentEquality();

  @override
  bool equals(SubscriberRecord? e1, SubscriberRecord? e2) {
    return e1?.email == e2?.email && e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SubscriberRecord? e) =>
      const ListEquality().hash([e?.email, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is SubscriberRecord;
}
