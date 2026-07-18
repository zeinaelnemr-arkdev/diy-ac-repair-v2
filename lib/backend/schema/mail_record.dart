import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MailRecord extends FirestoreRecord {
  MailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "to" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "message" field.
  MessageStruct? _message;
  MessageStruct get message => _message ?? MessageStruct();
  bool hasMessage() => _message != null;

  void _initializeFields() {
    _to = snapshotData['to'] as String?;
    _message = snapshotData['message'] is MessageStruct
        ? snapshotData['message']
        : MessageStruct.maybeFromMap(snapshotData['message']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mail');

  static Stream<MailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MailRecord.fromSnapshot(s));

  static Future<MailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MailRecord.fromSnapshot(s));

  static MailRecord fromSnapshot(DocumentSnapshot snapshot) => MailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMailRecordData({
  String? to,
  MessageStruct? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'to': to,
      'message': MessageStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "message" field.
  addMessageStructData(firestoreData, message, 'message');

  return firestoreData;
}

class MailRecordDocumentEquality implements Equality<MailRecord> {
  const MailRecordDocumentEquality();

  @override
  bool equals(MailRecord? e1, MailRecord? e2) {
    return e1?.to == e2?.to && e1?.message == e2?.message;
  }

  @override
  int hash(MailRecord? e) => const ListEquality().hash([e?.to, e?.message]);

  @override
  bool isValidKey(Object? o) => o is MailRecord;
}
