// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReturnPolicySnapshotStruct extends FFFirebaseStruct {
  ReturnPolicySnapshotStruct({
    bool? returnable,
    int? returnWindowDays,
    double? maxRefundPercent,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _returnable = returnable,
        _returnWindowDays = returnWindowDays,
        _maxRefundPercent = maxRefundPercent,
        super(firestoreUtilData);

  // "returnable" field.
  bool? _returnable;
  bool get returnable => _returnable ?? true;
  set returnable(bool? val) => _returnable = val;

  bool hasReturnable() => _returnable != null;

  // "returnWindowDays" field.
  int? _returnWindowDays;
  int get returnWindowDays => _returnWindowDays ?? 0;
  set returnWindowDays(int? val) => _returnWindowDays = val;

  void incrementReturnWindowDays(int amount) =>
      returnWindowDays = returnWindowDays + amount;

  bool hasReturnWindowDays() => _returnWindowDays != null;

  // "maxRefundPercent" field.
  double? _maxRefundPercent;
  double get maxRefundPercent => _maxRefundPercent ?? 0.0;
  set maxRefundPercent(double? val) => _maxRefundPercent = val;

  void incrementMaxRefundPercent(double amount) =>
      maxRefundPercent = maxRefundPercent + amount;

  bool hasMaxRefundPercent() => _maxRefundPercent != null;

  static ReturnPolicySnapshotStruct fromMap(Map<String, dynamic> data) =>
      ReturnPolicySnapshotStruct(
        returnable: data['returnable'] as bool?,
        returnWindowDays: castToType<int>(data['returnWindowDays']),
        maxRefundPercent: castToType<double>(data['maxRefundPercent']),
      );

  static ReturnPolicySnapshotStruct? maybeFromMap(dynamic data) => data is Map
      ? ReturnPolicySnapshotStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'returnable': _returnable,
        'returnWindowDays': _returnWindowDays,
        'maxRefundPercent': _maxRefundPercent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'returnable': serializeParam(
          _returnable,
          ParamType.bool,
        ),
        'returnWindowDays': serializeParam(
          _returnWindowDays,
          ParamType.int,
        ),
        'maxRefundPercent': serializeParam(
          _maxRefundPercent,
          ParamType.double,
        ),
      }.withoutNulls;

  static ReturnPolicySnapshotStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReturnPolicySnapshotStruct(
        returnable: deserializeParam(
          data['returnable'],
          ParamType.bool,
          false,
        ),
        returnWindowDays: deserializeParam(
          data['returnWindowDays'],
          ParamType.int,
          false,
        ),
        maxRefundPercent: deserializeParam(
          data['maxRefundPercent'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ReturnPolicySnapshotStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReturnPolicySnapshotStruct &&
        returnable == other.returnable &&
        returnWindowDays == other.returnWindowDays &&
        maxRefundPercent == other.maxRefundPercent;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([returnable, returnWindowDays, maxRefundPercent]);
}

ReturnPolicySnapshotStruct createReturnPolicySnapshotStruct({
  bool? returnable,
  int? returnWindowDays,
  double? maxRefundPercent,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReturnPolicySnapshotStruct(
      returnable: returnable,
      returnWindowDays: returnWindowDays,
      maxRefundPercent: maxRefundPercent,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReturnPolicySnapshotStruct? updateReturnPolicySnapshotStruct(
  ReturnPolicySnapshotStruct? returnPolicySnapshot, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    returnPolicySnapshot
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReturnPolicySnapshotStructData(
  Map<String, dynamic> firestoreData,
  ReturnPolicySnapshotStruct? returnPolicySnapshot,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (returnPolicySnapshot == null) {
    return;
  }
  if (returnPolicySnapshot.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && returnPolicySnapshot.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final returnPolicySnapshotData =
      getReturnPolicySnapshotFirestoreData(returnPolicySnapshot, forFieldValue);
  final nestedData =
      returnPolicySnapshotData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      returnPolicySnapshot.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReturnPolicySnapshotFirestoreData(
  ReturnPolicySnapshotStruct? returnPolicySnapshot, [
  bool forFieldValue = false,
]) {
  if (returnPolicySnapshot == null) {
    return {};
  }
  final firestoreData = mapToFirestore(returnPolicySnapshot.toMap());

  // Add any Firestore field values
  mapToFirestore(returnPolicySnapshot.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReturnPolicySnapshotListFirestoreData(
  List<ReturnPolicySnapshotStruct>? returnPolicySnapshots,
) =>
    returnPolicySnapshots
        ?.map((e) => getReturnPolicySnapshotFirestoreData(e, true))
        .toList() ??
    [];
