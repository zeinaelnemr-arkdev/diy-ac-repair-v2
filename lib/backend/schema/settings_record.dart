import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsRecord extends FirestoreRecord {
  SettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  bool hasKey() => _key != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  bool hasValue() => _value != null;

  void _initializeFields() {
    _key = snapshotData['key'] as String?;
    _value = snapshotData['value'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('settings');

  static Stream<SettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SettingsRecord.fromSnapshot(s));

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SettingsRecord.fromSnapshot(s));

  static SettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSettingsRecordData({
  String? key,
  String? value,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'key': key,
      'value': value,
    }.withoutNulls,
  );

  return firestoreData;
}

class SettingsRecordDocumentEquality implements Equality<SettingsRecord> {
  const SettingsRecordDocumentEquality();

  @override
  bool equals(SettingsRecord? e1, SettingsRecord? e2) {
    return e1?.key == e2?.key && e1?.value == e2?.value;
  }

  @override
  int hash(SettingsRecord? e) => const ListEquality().hash([e?.key, e?.value]);

  @override
  bool isValidKey(Object? o) => o is SettingsRecord;
}
