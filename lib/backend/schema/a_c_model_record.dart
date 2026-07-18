import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ACModelRecord extends FirestoreRecord {
  ACModelRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "acMakeId" field.
  DocumentReference? _acMakeId;
  DocumentReference? get acMakeId => _acMakeId;
  bool hasAcMakeId() => _acMakeId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "contactorSpecId" field.
  DocumentReference? _contactorSpecId;
  DocumentReference? get contactorSpecId => _contactorSpecId;
  bool hasContactorSpecId() => _contactorSpecId != null;

  // "compressorMicroFarad" field.
  double? _compressorMicroFarad;
  double get compressorMicroFarad => _compressorMicroFarad ?? 0.0;
  bool hasCompressorMicroFarad() => _compressorMicroFarad != null;

  // "capacitorShape" field.
  String? _capacitorShape;
  String get capacitorShape => _capacitorShape ?? '';
  bool hasCapacitorShape() => _capacitorShape != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

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

  // "motorSpecsId" field.
  DocumentReference? _motorSpecsId;
  DocumentReference? get motorSpecsId => _motorSpecsId;
  bool hasMotorSpecsId() => _motorSpecsId != null;

  // "capacitorSpecsId" field.
  DocumentReference? _capacitorSpecsId;
  DocumentReference? get capacitorSpecsId => _capacitorSpecsId;
  bool hasCapacitorSpecsId() => _capacitorSpecsId != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _acMakeId = snapshotData['acMakeId'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _contactorSpecId = snapshotData['contactorSpecId'] as DocumentReference?;
    _compressorMicroFarad =
        castToType<double>(snapshotData['compressorMicroFarad']);
    _capacitorShape = snapshotData['capacitorShape'] as String?;
    _image = getDataList(snapshotData['image']);
    _approved = snapshotData['approved'] as bool?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
    _motorSpecsId = snapshotData['motorSpecsId'] as DocumentReference?;
    _capacitorSpecsId = snapshotData['capacitorSpecsId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ACModel');

  static Stream<ACModelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ACModelRecord.fromSnapshot(s));

  static Future<ACModelRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ACModelRecord.fromSnapshot(s));

  static ACModelRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ACModelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ACModelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ACModelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ACModelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ACModelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createACModelRecordData({
  String? id,
  DocumentReference? acMakeId,
  String? name,
  String? description,
  DocumentReference? contactorSpecId,
  double? compressorMicroFarad,
  String? capacitorShape,
  bool? approved,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
  DocumentReference? motorSpecsId,
  DocumentReference? capacitorSpecsId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'acMakeId': acMakeId,
      'name': name,
      'description': description,
      'contactorSpecId': contactorSpecId,
      'compressorMicroFarad': compressorMicroFarad,
      'capacitorShape': capacitorShape,
      'approved': approved,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
      'motorSpecsId': motorSpecsId,
      'capacitorSpecsId': capacitorSpecsId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ACModelRecordDocumentEquality implements Equality<ACModelRecord> {
  const ACModelRecordDocumentEquality();

  @override
  bool equals(ACModelRecord? e1, ACModelRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.acMakeId == e2?.acMakeId &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.contactorSpecId == e2?.contactorSpecId &&
        e1?.compressorMicroFarad == e2?.compressorMicroFarad &&
        e1?.capacitorShape == e2?.capacitorShape &&
        listEquality.equals(e1?.image, e2?.image) &&
        e1?.approved == e2?.approved &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt &&
        e1?.motorSpecsId == e2?.motorSpecsId &&
        e1?.capacitorSpecsId == e2?.capacitorSpecsId;
  }

  @override
  int hash(ACModelRecord? e) => const ListEquality().hash([
        e?.id,
        e?.acMakeId,
        e?.name,
        e?.description,
        e?.contactorSpecId,
        e?.compressorMicroFarad,
        e?.capacitorShape,
        e?.image,
        e?.approved,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt,
        e?.motorSpecsId,
        e?.capacitorSpecsId
      ]);

  @override
  bool isValidKey(Object? o) => o is ACModelRecord;
}
