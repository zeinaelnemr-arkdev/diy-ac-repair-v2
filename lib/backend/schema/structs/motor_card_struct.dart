// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MotorCardStruct extends FFFirebaseStruct {
  MotorCardStruct({
    int? motorRpm,
    int? motorVolt,
    double? motorAmp,
    double? motorTemp,
    int? motorNOSpeeds,
    String? motorRotation,
    double? motorHeight,
    double? motorAxleDiameter,
    double? motorCapacitorMFD,
    double? motorBodyDiameter,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _motorRpm = motorRpm,
        _motorVolt = motorVolt,
        _motorAmp = motorAmp,
        _motorTemp = motorTemp,
        _motorNOSpeeds = motorNOSpeeds,
        _motorRotation = motorRotation,
        _motorHeight = motorHeight,
        _motorAxleDiameter = motorAxleDiameter,
        _motorCapacitorMFD = motorCapacitorMFD,
        _motorBodyDiameter = motorBodyDiameter,
        super(firestoreUtilData);

  // "motorRpm" field.
  int? _motorRpm;
  int get motorRpm => _motorRpm ?? 0;
  set motorRpm(int? val) => _motorRpm = val;

  void incrementMotorRpm(int amount) => motorRpm = motorRpm + amount;

  bool hasMotorRpm() => _motorRpm != null;

  // "motorVolt" field.
  int? _motorVolt;
  int get motorVolt => _motorVolt ?? 0;
  set motorVolt(int? val) => _motorVolt = val;

  void incrementMotorVolt(int amount) => motorVolt = motorVolt + amount;

  bool hasMotorVolt() => _motorVolt != null;

  // "motorAmp" field.
  double? _motorAmp;
  double get motorAmp => _motorAmp ?? 0.0;
  set motorAmp(double? val) => _motorAmp = val;

  void incrementMotorAmp(double amount) => motorAmp = motorAmp + amount;

  bool hasMotorAmp() => _motorAmp != null;

  // "motorTemp" field.
  double? _motorTemp;
  double get motorTemp => _motorTemp ?? 0.0;
  set motorTemp(double? val) => _motorTemp = val;

  void incrementMotorTemp(double amount) => motorTemp = motorTemp + amount;

  bool hasMotorTemp() => _motorTemp != null;

  // "motorNOSpeeds" field.
  int? _motorNOSpeeds;
  int get motorNOSpeeds => _motorNOSpeeds ?? 0;
  set motorNOSpeeds(int? val) => _motorNOSpeeds = val;

  void incrementMotorNOSpeeds(int amount) =>
      motorNOSpeeds = motorNOSpeeds + amount;

  bool hasMotorNOSpeeds() => _motorNOSpeeds != null;

  // "motorRotation" field.
  String? _motorRotation;
  String get motorRotation => _motorRotation ?? '';
  set motorRotation(String? val) => _motorRotation = val;

  bool hasMotorRotation() => _motorRotation != null;

  // "motorHeight" field.
  double? _motorHeight;
  double get motorHeight => _motorHeight ?? 0.0;
  set motorHeight(double? val) => _motorHeight = val;

  void incrementMotorHeight(double amount) =>
      motorHeight = motorHeight + amount;

  bool hasMotorHeight() => _motorHeight != null;

  // "motorAxleDiameter" field.
  double? _motorAxleDiameter;
  double get motorAxleDiameter => _motorAxleDiameter ?? 0.0;
  set motorAxleDiameter(double? val) => _motorAxleDiameter = val;

  void incrementMotorAxleDiameter(double amount) =>
      motorAxleDiameter = motorAxleDiameter + amount;

  bool hasMotorAxleDiameter() => _motorAxleDiameter != null;

  // "motorCapacitorMFD" field.
  double? _motorCapacitorMFD;
  double get motorCapacitorMFD => _motorCapacitorMFD ?? 0.0;
  set motorCapacitorMFD(double? val) => _motorCapacitorMFD = val;

  void incrementMotorCapacitorMFD(double amount) =>
      motorCapacitorMFD = motorCapacitorMFD + amount;

  bool hasMotorCapacitorMFD() => _motorCapacitorMFD != null;

  // "motorBodyDiameter" field.
  double? _motorBodyDiameter;
  double get motorBodyDiameter => _motorBodyDiameter ?? 0.0;
  set motorBodyDiameter(double? val) => _motorBodyDiameter = val;

  void incrementMotorBodyDiameter(double amount) =>
      motorBodyDiameter = motorBodyDiameter + amount;

  bool hasMotorBodyDiameter() => _motorBodyDiameter != null;

  static MotorCardStruct fromMap(Map<String, dynamic> data) => MotorCardStruct(
        motorRpm: castToType<int>(data['motorRpm']),
        motorVolt: castToType<int>(data['motorVolt']),
        motorAmp: castToType<double>(data['motorAmp']),
        motorTemp: castToType<double>(data['motorTemp']),
        motorNOSpeeds: castToType<int>(data['motorNOSpeeds']),
        motorRotation: data['motorRotation'] as String?,
        motorHeight: castToType<double>(data['motorHeight']),
        motorAxleDiameter: castToType<double>(data['motorAxleDiameter']),
        motorCapacitorMFD: castToType<double>(data['motorCapacitorMFD']),
        motorBodyDiameter: castToType<double>(data['motorBodyDiameter']),
      );

  static MotorCardStruct? maybeFromMap(dynamic data) => data is Map
      ? MotorCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'motorRpm': _motorRpm,
        'motorVolt': _motorVolt,
        'motorAmp': _motorAmp,
        'motorTemp': _motorTemp,
        'motorNOSpeeds': _motorNOSpeeds,
        'motorRotation': _motorRotation,
        'motorHeight': _motorHeight,
        'motorAxleDiameter': _motorAxleDiameter,
        'motorCapacitorMFD': _motorCapacitorMFD,
        'motorBodyDiameter': _motorBodyDiameter,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'motorRpm': serializeParam(
          _motorRpm,
          ParamType.int,
        ),
        'motorVolt': serializeParam(
          _motorVolt,
          ParamType.int,
        ),
        'motorAmp': serializeParam(
          _motorAmp,
          ParamType.double,
        ),
        'motorTemp': serializeParam(
          _motorTemp,
          ParamType.double,
        ),
        'motorNOSpeeds': serializeParam(
          _motorNOSpeeds,
          ParamType.int,
        ),
        'motorRotation': serializeParam(
          _motorRotation,
          ParamType.String,
        ),
        'motorHeight': serializeParam(
          _motorHeight,
          ParamType.double,
        ),
        'motorAxleDiameter': serializeParam(
          _motorAxleDiameter,
          ParamType.double,
        ),
        'motorCapacitorMFD': serializeParam(
          _motorCapacitorMFD,
          ParamType.double,
        ),
        'motorBodyDiameter': serializeParam(
          _motorBodyDiameter,
          ParamType.double,
        ),
      }.withoutNulls;

  static MotorCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      MotorCardStruct(
        motorRpm: deserializeParam(
          data['motorRpm'],
          ParamType.int,
          false,
        ),
        motorVolt: deserializeParam(
          data['motorVolt'],
          ParamType.int,
          false,
        ),
        motorAmp: deserializeParam(
          data['motorAmp'],
          ParamType.double,
          false,
        ),
        motorTemp: deserializeParam(
          data['motorTemp'],
          ParamType.double,
          false,
        ),
        motorNOSpeeds: deserializeParam(
          data['motorNOSpeeds'],
          ParamType.int,
          false,
        ),
        motorRotation: deserializeParam(
          data['motorRotation'],
          ParamType.String,
          false,
        ),
        motorHeight: deserializeParam(
          data['motorHeight'],
          ParamType.double,
          false,
        ),
        motorAxleDiameter: deserializeParam(
          data['motorAxleDiameter'],
          ParamType.double,
          false,
        ),
        motorCapacitorMFD: deserializeParam(
          data['motorCapacitorMFD'],
          ParamType.double,
          false,
        ),
        motorBodyDiameter: deserializeParam(
          data['motorBodyDiameter'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MotorCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MotorCardStruct &&
        motorRpm == other.motorRpm &&
        motorVolt == other.motorVolt &&
        motorAmp == other.motorAmp &&
        motorTemp == other.motorTemp &&
        motorNOSpeeds == other.motorNOSpeeds &&
        motorRotation == other.motorRotation &&
        motorHeight == other.motorHeight &&
        motorAxleDiameter == other.motorAxleDiameter &&
        motorCapacitorMFD == other.motorCapacitorMFD &&
        motorBodyDiameter == other.motorBodyDiameter;
  }

  @override
  int get hashCode => const ListEquality().hash([
        motorRpm,
        motorVolt,
        motorAmp,
        motorTemp,
        motorNOSpeeds,
        motorRotation,
        motorHeight,
        motorAxleDiameter,
        motorCapacitorMFD,
        motorBodyDiameter
      ]);
}

MotorCardStruct createMotorCardStruct({
  int? motorRpm,
  int? motorVolt,
  double? motorAmp,
  double? motorTemp,
  int? motorNOSpeeds,
  String? motorRotation,
  double? motorHeight,
  double? motorAxleDiameter,
  double? motorCapacitorMFD,
  double? motorBodyDiameter,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MotorCardStruct(
      motorRpm: motorRpm,
      motorVolt: motorVolt,
      motorAmp: motorAmp,
      motorTemp: motorTemp,
      motorNOSpeeds: motorNOSpeeds,
      motorRotation: motorRotation,
      motorHeight: motorHeight,
      motorAxleDiameter: motorAxleDiameter,
      motorCapacitorMFD: motorCapacitorMFD,
      motorBodyDiameter: motorBodyDiameter,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MotorCardStruct? updateMotorCardStruct(
  MotorCardStruct? motorCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    motorCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMotorCardStructData(
  Map<String, dynamic> firestoreData,
  MotorCardStruct? motorCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (motorCard == null) {
    return;
  }
  if (motorCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && motorCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final motorCardData = getMotorCardFirestoreData(motorCard, forFieldValue);
  final nestedData = motorCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = motorCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMotorCardFirestoreData(
  MotorCardStruct? motorCard, [
  bool forFieldValue = false,
]) {
  if (motorCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(motorCard.toMap());

  // Add any Firestore field values
  mapToFirestore(motorCard.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMotorCardListFirestoreData(
  List<MotorCardStruct>? motorCards,
) =>
    motorCards?.map((e) => getMotorCardFirestoreData(e, true)).toList() ?? [];
