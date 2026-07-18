// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CapacitorCardStruct extends FFFirebaseStruct {
  CapacitorCardStruct({
    double? capacMFD1,
    double? capacMFD2,
    double? capacDiameter,
    double? capacHeight,
    double? capacWidth,
    double? capacDepth,
    int? capacTempLow,
    int? capacTempHigh,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _capacMFD1 = capacMFD1,
        _capacMFD2 = capacMFD2,
        _capacDiameter = capacDiameter,
        _capacHeight = capacHeight,
        _capacWidth = capacWidth,
        _capacDepth = capacDepth,
        _capacTempLow = capacTempLow,
        _capacTempHigh = capacTempHigh,
        super(firestoreUtilData);

  // "capacMFD1" field.
  double? _capacMFD1;
  double get capacMFD1 => _capacMFD1 ?? 0.0;
  set capacMFD1(double? val) => _capacMFD1 = val;

  void incrementCapacMFD1(double amount) => capacMFD1 = capacMFD1 + amount;

  bool hasCapacMFD1() => _capacMFD1 != null;

  // "capacMFD2" field.
  double? _capacMFD2;
  double get capacMFD2 => _capacMFD2 ?? 0.0;
  set capacMFD2(double? val) => _capacMFD2 = val;

  void incrementCapacMFD2(double amount) => capacMFD2 = capacMFD2 + amount;

  bool hasCapacMFD2() => _capacMFD2 != null;

  // "capacDiameter" field.
  double? _capacDiameter;
  double get capacDiameter => _capacDiameter ?? 0.0;
  set capacDiameter(double? val) => _capacDiameter = val;

  void incrementCapacDiameter(double amount) =>
      capacDiameter = capacDiameter + amount;

  bool hasCapacDiameter() => _capacDiameter != null;

  // "capacHeight" field.
  double? _capacHeight;
  double get capacHeight => _capacHeight ?? 0.0;
  set capacHeight(double? val) => _capacHeight = val;

  void incrementCapacHeight(double amount) =>
      capacHeight = capacHeight + amount;

  bool hasCapacHeight() => _capacHeight != null;

  // "capacWidth" field.
  double? _capacWidth;
  double get capacWidth => _capacWidth ?? 0.0;
  set capacWidth(double? val) => _capacWidth = val;

  void incrementCapacWidth(double amount) => capacWidth = capacWidth + amount;

  bool hasCapacWidth() => _capacWidth != null;

  // "capacDepth" field.
  double? _capacDepth;
  double get capacDepth => _capacDepth ?? 0.0;
  set capacDepth(double? val) => _capacDepth = val;

  void incrementCapacDepth(double amount) => capacDepth = capacDepth + amount;

  bool hasCapacDepth() => _capacDepth != null;

  // "capacTempLow" field.
  int? _capacTempLow;
  int get capacTempLow => _capacTempLow ?? 0;
  set capacTempLow(int? val) => _capacTempLow = val;

  void incrementCapacTempLow(int amount) =>
      capacTempLow = capacTempLow + amount;

  bool hasCapacTempLow() => _capacTempLow != null;

  // "capacTempHigh" field.
  int? _capacTempHigh;
  int get capacTempHigh => _capacTempHigh ?? 0;
  set capacTempHigh(int? val) => _capacTempHigh = val;

  void incrementCapacTempHigh(int amount) =>
      capacTempHigh = capacTempHigh + amount;

  bool hasCapacTempHigh() => _capacTempHigh != null;

  static CapacitorCardStruct fromMap(Map<String, dynamic> data) =>
      CapacitorCardStruct(
        capacMFD1: castToType<double>(data['capacMFD1']),
        capacMFD2: castToType<double>(data['capacMFD2']),
        capacDiameter: castToType<double>(data['capacDiameter']),
        capacHeight: castToType<double>(data['capacHeight']),
        capacWidth: castToType<double>(data['capacWidth']),
        capacDepth: castToType<double>(data['capacDepth']),
        capacTempLow: castToType<int>(data['capacTempLow']),
        capacTempHigh: castToType<int>(data['capacTempHigh']),
      );

  static CapacitorCardStruct? maybeFromMap(dynamic data) => data is Map
      ? CapacitorCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'capacMFD1': _capacMFD1,
        'capacMFD2': _capacMFD2,
        'capacDiameter': _capacDiameter,
        'capacHeight': _capacHeight,
        'capacWidth': _capacWidth,
        'capacDepth': _capacDepth,
        'capacTempLow': _capacTempLow,
        'capacTempHigh': _capacTempHigh,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'capacMFD1': serializeParam(
          _capacMFD1,
          ParamType.double,
        ),
        'capacMFD2': serializeParam(
          _capacMFD2,
          ParamType.double,
        ),
        'capacDiameter': serializeParam(
          _capacDiameter,
          ParamType.double,
        ),
        'capacHeight': serializeParam(
          _capacHeight,
          ParamType.double,
        ),
        'capacWidth': serializeParam(
          _capacWidth,
          ParamType.double,
        ),
        'capacDepth': serializeParam(
          _capacDepth,
          ParamType.double,
        ),
        'capacTempLow': serializeParam(
          _capacTempLow,
          ParamType.int,
        ),
        'capacTempHigh': serializeParam(
          _capacTempHigh,
          ParamType.int,
        ),
      }.withoutNulls;

  static CapacitorCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CapacitorCardStruct(
        capacMFD1: deserializeParam(
          data['capacMFD1'],
          ParamType.double,
          false,
        ),
        capacMFD2: deserializeParam(
          data['capacMFD2'],
          ParamType.double,
          false,
        ),
        capacDiameter: deserializeParam(
          data['capacDiameter'],
          ParamType.double,
          false,
        ),
        capacHeight: deserializeParam(
          data['capacHeight'],
          ParamType.double,
          false,
        ),
        capacWidth: deserializeParam(
          data['capacWidth'],
          ParamType.double,
          false,
        ),
        capacDepth: deserializeParam(
          data['capacDepth'],
          ParamType.double,
          false,
        ),
        capacTempLow: deserializeParam(
          data['capacTempLow'],
          ParamType.int,
          false,
        ),
        capacTempHigh: deserializeParam(
          data['capacTempHigh'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CapacitorCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CapacitorCardStruct &&
        capacMFD1 == other.capacMFD1 &&
        capacMFD2 == other.capacMFD2 &&
        capacDiameter == other.capacDiameter &&
        capacHeight == other.capacHeight &&
        capacWidth == other.capacWidth &&
        capacDepth == other.capacDepth &&
        capacTempLow == other.capacTempLow &&
        capacTempHigh == other.capacTempHigh;
  }

  @override
  int get hashCode => const ListEquality().hash([
        capacMFD1,
        capacMFD2,
        capacDiameter,
        capacHeight,
        capacWidth,
        capacDepth,
        capacTempLow,
        capacTempHigh
      ]);
}

CapacitorCardStruct createCapacitorCardStruct({
  double? capacMFD1,
  double? capacMFD2,
  double? capacDiameter,
  double? capacHeight,
  double? capacWidth,
  double? capacDepth,
  int? capacTempLow,
  int? capacTempHigh,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CapacitorCardStruct(
      capacMFD1: capacMFD1,
      capacMFD2: capacMFD2,
      capacDiameter: capacDiameter,
      capacHeight: capacHeight,
      capacWidth: capacWidth,
      capacDepth: capacDepth,
      capacTempLow: capacTempLow,
      capacTempHigh: capacTempHigh,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CapacitorCardStruct? updateCapacitorCardStruct(
  CapacitorCardStruct? capacitorCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    capacitorCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCapacitorCardStructData(
  Map<String, dynamic> firestoreData,
  CapacitorCardStruct? capacitorCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (capacitorCard == null) {
    return;
  }
  if (capacitorCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && capacitorCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final capacitorCardData =
      getCapacitorCardFirestoreData(capacitorCard, forFieldValue);
  final nestedData =
      capacitorCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = capacitorCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCapacitorCardFirestoreData(
  CapacitorCardStruct? capacitorCard, [
  bool forFieldValue = false,
]) {
  if (capacitorCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(capacitorCard.toMap());

  // Add any Firestore field values
  mapToFirestore(capacitorCard.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCapacitorCardListFirestoreData(
  List<CapacitorCardStruct>? capacitorCards,
) =>
    capacitorCards
        ?.map((e) => getCapacitorCardFirestoreData(e, true))
        .toList() ??
    [];
