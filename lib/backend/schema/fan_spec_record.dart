import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Archived
class FanSpecRecord extends FirestoreRecord {
  FanSpecRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "numberOfBlades" field.
  int? _numberOfBlades;
  int get numberOfBlades => _numberOfBlades ?? 0;
  bool hasNumberOfBlades() => _numberOfBlades != null;

  // "radius" field.
  double? _radius;
  double get radius => _radius ?? 0.0;
  bool hasRadius() => _radius != null;

  // "pitchAngle" field.
  double? _pitchAngle;
  double get pitchAngle => _pitchAngle ?? 0.0;
  bool hasPitchAngle() => _pitchAngle != null;

  // "boreDiameter" field.
  double? _boreDiameter;
  double get boreDiameter => _boreDiameter ?? 0.0;
  bool hasBoreDiameter() => _boreDiameter != null;

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
    _numberOfBlades = castToType<int>(snapshotData['numberOfBlades']);
    _radius = castToType<double>(snapshotData['radius']);
    _pitchAngle = castToType<double>(snapshotData['pitchAngle']);
    _boreDiameter = castToType<double>(snapshotData['boreDiameter']);
    _specMetadata = snapshotData['specMetadata'] as String?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FanSpec');

  static Stream<FanSpecRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FanSpecRecord.fromSnapshot(s));

  static Future<FanSpecRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FanSpecRecord.fromSnapshot(s));

  static FanSpecRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FanSpecRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FanSpecRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FanSpecRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FanSpecRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FanSpecRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFanSpecRecordData({
  String? id,
  int? numberOfBlades,
  double? radius,
  double? pitchAngle,
  double? boreDiameter,
  String? specMetadata,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'numberOfBlades': numberOfBlades,
      'radius': radius,
      'pitchAngle': pitchAngle,
      'boreDiameter': boreDiameter,
      'specMetadata': specMetadata,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class FanSpecRecordDocumentEquality implements Equality<FanSpecRecord> {
  const FanSpecRecordDocumentEquality();

  @override
  bool equals(FanSpecRecord? e1, FanSpecRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.numberOfBlades == e2?.numberOfBlades &&
        e1?.radius == e2?.radius &&
        e1?.pitchAngle == e2?.pitchAngle &&
        e1?.boreDiameter == e2?.boreDiameter &&
        e1?.specMetadata == e2?.specMetadata &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt;
  }

  @override
  int hash(FanSpecRecord? e) => const ListEquality().hash([
        e?.id,
        e?.numberOfBlades,
        e?.radius,
        e?.pitchAngle,
        e?.boreDiameter,
        e?.specMetadata,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is FanSpecRecord;
}
