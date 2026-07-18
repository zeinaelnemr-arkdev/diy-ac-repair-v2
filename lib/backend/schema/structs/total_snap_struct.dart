// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TotalSnapStruct extends FFFirebaseStruct {
  TotalSnapStruct({
    double? subtotal,
    double? shipping,
    double? tax,
    double? total,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _subtotal = subtotal,
        _shipping = shipping,
        _tax = tax,
        _total = total,
        super(firestoreUtilData);

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "shipping" field.
  double? _shipping;
  double get shipping => _shipping ?? 0.0;
  set shipping(double? val) => _shipping = val;

  void incrementShipping(double amount) => shipping = shipping + amount;

  bool hasShipping() => _shipping != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  set tax(double? val) => _tax = val;

  void incrementTax(double amount) => tax = tax + amount;

  bool hasTax() => _tax != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  static TotalSnapStruct fromMap(Map<String, dynamic> data) => TotalSnapStruct(
        subtotal: castToType<double>(data['subtotal']),
        shipping: castToType<double>(data['shipping']),
        tax: castToType<double>(data['tax']),
        total: castToType<double>(data['total']),
      );

  static TotalSnapStruct? maybeFromMap(dynamic data) => data is Map
      ? TotalSnapStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'subtotal': _subtotal,
        'shipping': _shipping,
        'tax': _tax,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
        'shipping': serializeParam(
          _shipping,
          ParamType.double,
        ),
        'tax': serializeParam(
          _tax,
          ParamType.double,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
      }.withoutNulls;

  static TotalSnapStruct fromSerializableMap(Map<String, dynamic> data) =>
      TotalSnapStruct(
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
        shipping: deserializeParam(
          data['shipping'],
          ParamType.double,
          false,
        ),
        tax: deserializeParam(
          data['tax'],
          ParamType.double,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TotalSnapStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TotalSnapStruct &&
        subtotal == other.subtotal &&
        shipping == other.shipping &&
        tax == other.tax &&
        total == other.total;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([subtotal, shipping, tax, total]);
}

TotalSnapStruct createTotalSnapStruct({
  double? subtotal,
  double? shipping,
  double? tax,
  double? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TotalSnapStruct(
      subtotal: subtotal,
      shipping: shipping,
      tax: tax,
      total: total,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TotalSnapStruct? updateTotalSnapStruct(
  TotalSnapStruct? totalSnap, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    totalSnap
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTotalSnapStructData(
  Map<String, dynamic> firestoreData,
  TotalSnapStruct? totalSnap,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (totalSnap == null) {
    return;
  }
  if (totalSnap.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && totalSnap.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final totalSnapData = getTotalSnapFirestoreData(totalSnap, forFieldValue);
  final nestedData = totalSnapData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = totalSnap.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTotalSnapFirestoreData(
  TotalSnapStruct? totalSnap, [
  bool forFieldValue = false,
]) {
  if (totalSnap == null) {
    return {};
  }
  final firestoreData = mapToFirestore(totalSnap.toMap());

  // Add any Firestore field values
  mapToFirestore(totalSnap.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTotalSnapListFirestoreData(
  List<TotalSnapStruct>? totalSnaps,
) =>
    totalSnaps?.map((e) => getTotalSnapFirestoreData(e, true)).toList() ?? [];
