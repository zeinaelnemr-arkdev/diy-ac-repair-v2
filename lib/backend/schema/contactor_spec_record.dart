import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactorSpecRecord extends FirestoreRecord {
  ContactorSpecRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "ratedVolt" field.
  double? _ratedVolt;
  double get ratedVolt => _ratedVolt ?? 0.0;
  bool hasRatedVolt() => _ratedVolt != null;

  // "ratedAmp" field.
  double? _ratedAmp;
  double get ratedAmp => _ratedAmp ?? 0.0;
  bool hasRatedAmp() => _ratedAmp != null;

  // "coilVoltage" field.
  double? _coilVoltage;
  double get coilVoltage => _coilVoltage ?? 0.0;
  bool hasCoilVoltage() => _coilVoltage != null;

  // "numberOfPoles" field.
  int? _numberOfPoles;
  int get numberOfPoles => _numberOfPoles ?? 0;
  bool hasNumberOfPoles() => _numberOfPoles != null;

  // "length" field.
  double? _length;
  double get length => _length ?? 0.0;
  bool hasLength() => _length != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  bool hasWidth() => _width != null;

  // "depth" field.
  double? _depth;
  double get depth => _depth ?? 0.0;
  bool hasDepth() => _depth != null;

  // "specMetadata" field.
  String? _specMetadata;
  String get specMetadata => _specMetadata ?? '';
  bool hasSpecMetadata() => _specMetadata != null;

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
    _ratedVolt = castToType<double>(snapshotData['ratedVolt']);
    _ratedAmp = castToType<double>(snapshotData['ratedAmp']);
    _coilVoltage = castToType<double>(snapshotData['coilVoltage']);
    _numberOfPoles = castToType<int>(snapshotData['numberOfPoles']);
    _length = castToType<double>(snapshotData['length']);
    _width = castToType<double>(snapshotData['width']);
    _depth = castToType<double>(snapshotData['depth']);
    _specMetadata = snapshotData['specMetadata'] as String?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ContactorSpec');

  static Stream<ContactorSpecRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactorSpecRecord.fromSnapshot(s));

  static Future<ContactorSpecRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactorSpecRecord.fromSnapshot(s));

  static ContactorSpecRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactorSpecRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactorSpecRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactorSpecRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactorSpecRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactorSpecRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactorSpecRecordData({
  String? id,
  double? ratedVolt,
  double? ratedAmp,
  double? coilVoltage,
  int? numberOfPoles,
  double? length,
  double? width,
  double? depth,
  String? specMetadata,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'ratedVolt': ratedVolt,
      'ratedAmp': ratedAmp,
      'coilVoltage': coilVoltage,
      'numberOfPoles': numberOfPoles,
      'length': length,
      'width': width,
      'depth': depth,
      'specMetadata': specMetadata,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactorSpecRecordDocumentEquality
    implements Equality<ContactorSpecRecord> {
  const ContactorSpecRecordDocumentEquality();

  @override
  bool equals(ContactorSpecRecord? e1, ContactorSpecRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.ratedVolt == e2?.ratedVolt &&
        e1?.ratedAmp == e2?.ratedAmp &&
        e1?.coilVoltage == e2?.coilVoltage &&
        e1?.numberOfPoles == e2?.numberOfPoles &&
        e1?.length == e2?.length &&
        e1?.width == e2?.width &&
        e1?.depth == e2?.depth &&
        e1?.specMetadata == e2?.specMetadata &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt;
  }

  @override
  int hash(ContactorSpecRecord? e) => const ListEquality().hash([
        e?.id,
        e?.ratedVolt,
        e?.ratedAmp,
        e?.coilVoltage,
        e?.numberOfPoles,
        e?.length,
        e?.width,
        e?.depth,
        e?.specMetadata,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactorSpecRecord;
}
