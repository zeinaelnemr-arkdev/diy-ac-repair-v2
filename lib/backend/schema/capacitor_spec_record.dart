import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CapacitorSpecRecord extends FirestoreRecord {
  CapacitorSpecRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "microFarad1" field.
  double? _microFarad1;
  double get microFarad1 => _microFarad1 ?? 0.0;
  bool hasMicroFarad1() => _microFarad1 != null;

  // "microFarad2" field.
  double? _microFarad2;
  double get microFarad2 => _microFarad2 ?? 0.0;
  bool hasMicroFarad2() => _microFarad2 != null;

  // "volt" field.
  int? _volt;
  int get volt => _volt ?? 0;
  bool hasVolt() => _volt != null;

  // "diameter" field.
  double? _diameter;
  double get diameter => _diameter ?? 0.0;
  bool hasDiameter() => _diameter != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  bool hasWidth() => _width != null;

  // "depth" field.
  double? _depth;
  double get depth => _depth ?? 0.0;
  bool hasDepth() => _depth != null;

  // "material" field.
  String? _material;
  String get material => _material ?? '';
  bool hasMaterial() => _material != null;

  // "tempLow" field.
  int? _tempLow;
  int get tempLow => _tempLow ?? 0;
  bool hasTempLow() => _tempLow != null;

  // "tempHigh" field.
  int? _tempHigh;
  int get tempHigh => _tempHigh ?? 0;
  bool hasTempHigh() => _tempHigh != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "lastUpdatedBy" field.
  DocumentReference? _lastUpdatedBy;
  DocumentReference? get lastUpdatedBy => _lastUpdatedBy;
  bool hasLastUpdatedBy() => _lastUpdatedBy != null;

  // "lastUpdatedAt" field.
  DateTime? _lastUpdatedAt;
  DateTime? get lastUpdatedAt => _lastUpdatedAt;
  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  // "shape" field.
  CapacitorShape? _shape;
  CapacitorShape? get shape => _shape;
  bool hasShape() => _shape != null;

  // "type" field.
  CapacitorType? _type;
  CapacitorType? get type => _type;
  bool hasType() => _type != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _microFarad1 = castToType<double>(snapshotData['microFarad1']);
    _microFarad2 = castToType<double>(snapshotData['microFarad2']);
    _volt = castToType<int>(snapshotData['volt']);
    _diameter = castToType<double>(snapshotData['diameter']);
    _height = castToType<double>(snapshotData['height']);
    _width = castToType<double>(snapshotData['width']);
    _depth = castToType<double>(snapshotData['depth']);
    _material = snapshotData['material'] as String?;
    _tempLow = castToType<int>(snapshotData['tempLow']);
    _tempHigh = castToType<int>(snapshotData['tempHigh']);
    _desc = snapshotData['desc'] as String?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
    _shape = snapshotData['shape'] is CapacitorShape
        ? snapshotData['shape']
        : deserializeEnum<CapacitorShape>(snapshotData['shape']);
    _type = snapshotData['type'] is CapacitorType
        ? snapshotData['type']
        : deserializeEnum<CapacitorType>(snapshotData['type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CapacitorSpec');

  static Stream<CapacitorSpecRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CapacitorSpecRecord.fromSnapshot(s));

  static Future<CapacitorSpecRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CapacitorSpecRecord.fromSnapshot(s));

  static CapacitorSpecRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CapacitorSpecRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CapacitorSpecRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CapacitorSpecRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CapacitorSpecRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CapacitorSpecRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCapacitorSpecRecordData({
  String? id,
  double? microFarad1,
  double? microFarad2,
  int? volt,
  double? diameter,
  double? height,
  double? width,
  double? depth,
  String? material,
  int? tempLow,
  int? tempHigh,
  String? desc,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
  CapacitorShape? shape,
  CapacitorType? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'microFarad1': microFarad1,
      'microFarad2': microFarad2,
      'volt': volt,
      'diameter': diameter,
      'height': height,
      'width': width,
      'depth': depth,
      'material': material,
      'tempLow': tempLow,
      'tempHigh': tempHigh,
      'desc': desc,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
      'shape': shape,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class CapacitorSpecRecordDocumentEquality
    implements Equality<CapacitorSpecRecord> {
  const CapacitorSpecRecordDocumentEquality();

  @override
  bool equals(CapacitorSpecRecord? e1, CapacitorSpecRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.microFarad1 == e2?.microFarad1 &&
        e1?.microFarad2 == e2?.microFarad2 &&
        e1?.volt == e2?.volt &&
        e1?.diameter == e2?.diameter &&
        e1?.height == e2?.height &&
        e1?.width == e2?.width &&
        e1?.depth == e2?.depth &&
        e1?.material == e2?.material &&
        e1?.tempLow == e2?.tempLow &&
        e1?.tempHigh == e2?.tempHigh &&
        e1?.desc == e2?.desc &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt &&
        e1?.shape == e2?.shape &&
        e1?.type == e2?.type;
  }

  @override
  int hash(CapacitorSpecRecord? e) => const ListEquality().hash([
        e?.id,
        e?.microFarad1,
        e?.microFarad2,
        e?.volt,
        e?.diameter,
        e?.height,
        e?.width,
        e?.depth,
        e?.material,
        e?.tempLow,
        e?.tempHigh,
        e?.desc,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt,
        e?.shape,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is CapacitorSpecRecord;
}
