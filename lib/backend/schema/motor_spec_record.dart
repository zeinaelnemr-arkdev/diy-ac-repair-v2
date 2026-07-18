import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MotorSpecRecord extends FirestoreRecord {
  MotorSpecRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "shaftLength" field.
  double? _shaftLength;
  double get shaftLength => _shaftLength ?? 0.0;
  bool hasShaftLength() => _shaftLength != null;

  // "volt" field.
  int? _volt;
  int get volt => _volt ?? 0;
  bool hasVolt() => _volt != null;

  // "amp" field.
  double? _amp;
  double get amp => _amp ?? 0.0;
  bool hasAmp() => _amp != null;

  // "hp" field.
  double? _hp;
  double get hp => _hp ?? 0.0;
  bool hasHp() => _hp != null;

  // "rpm" field.
  int? _rpm;
  int get rpm => _rpm ?? 0;
  bool hasRpm() => _rpm != null;

  // "bodyDiameter" field.
  double? _bodyDiameter;
  double get bodyDiameter => _bodyDiameter ?? 0.0;
  bool hasBodyDiameter() => _bodyDiameter != null;

  // "bodyHeight" field.
  double? _bodyHeight;
  double get bodyHeight => _bodyHeight ?? 0.0;
  bool hasBodyHeight() => _bodyHeight != null;

  // "axleDiameter" field.
  double? _axleDiameter;
  double get axleDiameter => _axleDiameter ?? 0.0;
  bool hasAxleDiameter() => _axleDiameter != null;

  // "capacitorMicroFarad" field.
  double? _capacitorMicroFarad;
  double get capacitorMicroFarad => _capacitorMicroFarad ?? 0.0;
  bool hasCapacitorMicroFarad() => _capacitorMicroFarad != null;

  // "capacitorVolt" field.
  int? _capacitorVolt;
  int get capacitorVolt => _capacitorVolt ?? 0;
  bool hasCapacitorVolt() => _capacitorVolt != null;

  // "noOfSpeeds" field.
  int? _noOfSpeeds;
  int get noOfSpeeds => _noOfSpeeds ?? 0;
  bool hasNoOfSpeeds() => _noOfSpeeds != null;

  // "frameId" field.
  String? _frameId;
  String get frameId => _frameId ?? '';
  bool hasFrameId() => _frameId != null;

  // "noOfPhases" field.
  int? _noOfPhases;
  int get noOfPhases => _noOfPhases ?? 0;
  bool hasNoOfPhases() => _noOfPhases != null;

  // "ambientTempC" field.
  double? _ambientTempC;
  double get ambientTempC => _ambientTempC ?? 0.0;
  bool hasAmbientTempC() => _ambientTempC != null;

  // "enclosure" field.
  String? _enclosure;
  String get enclosure => _enclosure ?? '';
  bool hasEnclosure() => _enclosure != null;

  // "motorType" field.
  String? _motorType;
  String get motorType => _motorType ?? '';
  bool hasMotorType() => _motorType != null;

  // "mountingNotes" field.
  String? _mountingNotes;
  String get mountingNotes => _mountingNotes ?? '';
  bool hasMountingNotes() => _mountingNotes != null;

  // "lastUpdatedAt" field.
  DateTime? _lastUpdatedAt;
  DateTime? get lastUpdatedAt => _lastUpdatedAt;
  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  // "lastUpdatedBy" field.
  DocumentReference? _lastUpdatedBy;
  DocumentReference? get lastUpdatedBy => _lastUpdatedBy;
  bool hasLastUpdatedBy() => _lastUpdatedBy != null;

  // "searchableKeywords" field.
  List<String>? _searchableKeywords;
  List<String> get searchableKeywords => _searchableKeywords ?? const [];
  bool hasSearchableKeywords() => _searchableKeywords != null;

  // "Desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "wireLength" field.
  double? _wireLength;
  double get wireLength => _wireLength ?? 0.0;
  bool hasWireLength() => _wireLength != null;

  // "rotationDirection" field.
  MotorRotationDirection? _rotationDirection;
  MotorRotationDirection? get rotationDirection => _rotationDirection;
  bool hasRotationDirection() => _rotationDirection != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _shaftLength = castToType<double>(snapshotData['shaftLength']);
    _volt = castToType<int>(snapshotData['volt']);
    _amp = castToType<double>(snapshotData['amp']);
    _hp = castToType<double>(snapshotData['hp']);
    _rpm = castToType<int>(snapshotData['rpm']);
    _bodyDiameter = castToType<double>(snapshotData['bodyDiameter']);
    _bodyHeight = castToType<double>(snapshotData['bodyHeight']);
    _axleDiameter = castToType<double>(snapshotData['axleDiameter']);
    _capacitorMicroFarad =
        castToType<double>(snapshotData['capacitorMicroFarad']);
    _capacitorVolt = castToType<int>(snapshotData['capacitorVolt']);
    _noOfSpeeds = castToType<int>(snapshotData['noOfSpeeds']);
    _frameId = snapshotData['frameId'] as String?;
    _noOfPhases = castToType<int>(snapshotData['noOfPhases']);
    _ambientTempC = castToType<double>(snapshotData['ambientTempC']);
    _enclosure = snapshotData['enclosure'] as String?;
    _motorType = snapshotData['motorType'] as String?;
    _mountingNotes = snapshotData['mountingNotes'] as String?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _searchableKeywords = getDataList(snapshotData['searchableKeywords']);
    _desc = snapshotData['Desc'] as String?;
    _wireLength = castToType<double>(snapshotData['wireLength']);
    _rotationDirection =
        snapshotData['rotationDirection'] is MotorRotationDirection
            ? snapshotData['rotationDirection']
            : deserializeEnum<MotorRotationDirection>(
                snapshotData['rotationDirection']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MotorSpec');

  static Stream<MotorSpecRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MotorSpecRecord.fromSnapshot(s));

  static Future<MotorSpecRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MotorSpecRecord.fromSnapshot(s));

  static MotorSpecRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MotorSpecRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MotorSpecRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MotorSpecRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MotorSpecRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MotorSpecRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMotorSpecRecordData({
  String? id,
  double? shaftLength,
  int? volt,
  double? amp,
  double? hp,
  int? rpm,
  double? bodyDiameter,
  double? bodyHeight,
  double? axleDiameter,
  double? capacitorMicroFarad,
  int? capacitorVolt,
  int? noOfSpeeds,
  String? frameId,
  int? noOfPhases,
  double? ambientTempC,
  String? enclosure,
  String? motorType,
  String? mountingNotes,
  DateTime? lastUpdatedAt,
  DocumentReference? lastUpdatedBy,
  String? desc,
  double? wireLength,
  MotorRotationDirection? rotationDirection,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'shaftLength': shaftLength,
      'volt': volt,
      'amp': amp,
      'hp': hp,
      'rpm': rpm,
      'bodyDiameter': bodyDiameter,
      'bodyHeight': bodyHeight,
      'axleDiameter': axleDiameter,
      'capacitorMicroFarad': capacitorMicroFarad,
      'capacitorVolt': capacitorVolt,
      'noOfSpeeds': noOfSpeeds,
      'frameId': frameId,
      'noOfPhases': noOfPhases,
      'ambientTempC': ambientTempC,
      'enclosure': enclosure,
      'motorType': motorType,
      'mountingNotes': mountingNotes,
      'lastUpdatedAt': lastUpdatedAt,
      'lastUpdatedBy': lastUpdatedBy,
      'Desc': desc,
      'wireLength': wireLength,
      'rotationDirection': rotationDirection,
    }.withoutNulls,
  );

  return firestoreData;
}

class MotorSpecRecordDocumentEquality implements Equality<MotorSpecRecord> {
  const MotorSpecRecordDocumentEquality();

  @override
  bool equals(MotorSpecRecord? e1, MotorSpecRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.shaftLength == e2?.shaftLength &&
        e1?.volt == e2?.volt &&
        e1?.amp == e2?.amp &&
        e1?.hp == e2?.hp &&
        e1?.rpm == e2?.rpm &&
        e1?.bodyDiameter == e2?.bodyDiameter &&
        e1?.bodyHeight == e2?.bodyHeight &&
        e1?.axleDiameter == e2?.axleDiameter &&
        e1?.capacitorMicroFarad == e2?.capacitorMicroFarad &&
        e1?.capacitorVolt == e2?.capacitorVolt &&
        e1?.noOfSpeeds == e2?.noOfSpeeds &&
        e1?.frameId == e2?.frameId &&
        e1?.noOfPhases == e2?.noOfPhases &&
        e1?.ambientTempC == e2?.ambientTempC &&
        e1?.enclosure == e2?.enclosure &&
        e1?.motorType == e2?.motorType &&
        e1?.mountingNotes == e2?.mountingNotes &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        listEquality.equals(e1?.searchableKeywords, e2?.searchableKeywords) &&
        e1?.desc == e2?.desc &&
        e1?.wireLength == e2?.wireLength &&
        e1?.rotationDirection == e2?.rotationDirection;
  }

  @override
  int hash(MotorSpecRecord? e) => const ListEquality().hash([
        e?.id,
        e?.shaftLength,
        e?.volt,
        e?.amp,
        e?.hp,
        e?.rpm,
        e?.bodyDiameter,
        e?.bodyHeight,
        e?.axleDiameter,
        e?.capacitorMicroFarad,
        e?.capacitorVolt,
        e?.noOfSpeeds,
        e?.frameId,
        e?.noOfPhases,
        e?.ambientTempC,
        e?.enclosure,
        e?.motorType,
        e?.mountingNotes,
        e?.lastUpdatedAt,
        e?.lastUpdatedBy,
        e?.searchableKeywords,
        e?.desc,
        e?.wireLength,
        e?.rotationDirection
      ]);

  @override
  bool isValidKey(Object? o) => o is MotorSpecRecord;
}
