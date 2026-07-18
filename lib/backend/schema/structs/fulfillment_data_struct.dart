// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FulfillmentDataStruct extends FFFirebaseStruct {
  FulfillmentDataStruct({
    String? carrier,
    String? trackingNumber,
    String? trackingUrl,
    DateTime? shippedAt,
    DateTime? deliveredAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _carrier = carrier,
        _trackingNumber = trackingNumber,
        _trackingUrl = trackingUrl,
        _shippedAt = shippedAt,
        _deliveredAt = deliveredAt,
        super(firestoreUtilData);

  // "carrier" field.
  String? _carrier;
  String get carrier => _carrier ?? '';
  set carrier(String? val) => _carrier = val;

  bool hasCarrier() => _carrier != null;

  // "trackingNumber" field.
  String? _trackingNumber;
  String get trackingNumber => _trackingNumber ?? '';
  set trackingNumber(String? val) => _trackingNumber = val;

  bool hasTrackingNumber() => _trackingNumber != null;

  // "trackingUrl" field.
  String? _trackingUrl;
  String get trackingUrl => _trackingUrl ?? '';
  set trackingUrl(String? val) => _trackingUrl = val;

  bool hasTrackingUrl() => _trackingUrl != null;

  // "shippedAt" field.
  DateTime? _shippedAt;
  DateTime? get shippedAt => _shippedAt;
  set shippedAt(DateTime? val) => _shippedAt = val;

  bool hasShippedAt() => _shippedAt != null;

  // "deliveredAt" field.
  DateTime? _deliveredAt;
  DateTime? get deliveredAt => _deliveredAt;
  set deliveredAt(DateTime? val) => _deliveredAt = val;

  bool hasDeliveredAt() => _deliveredAt != null;

  static FulfillmentDataStruct fromMap(Map<String, dynamic> data) =>
      FulfillmentDataStruct(
        carrier: data['carrier'] as String?,
        trackingNumber: data['trackingNumber'] as String?,
        trackingUrl: data['trackingUrl'] as String?,
        shippedAt: data['shippedAt'] as DateTime?,
        deliveredAt: data['deliveredAt'] as DateTime?,
      );

  static FulfillmentDataStruct? maybeFromMap(dynamic data) => data is Map
      ? FulfillmentDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'carrier': _carrier,
        'trackingNumber': _trackingNumber,
        'trackingUrl': _trackingUrl,
        'shippedAt': _shippedAt,
        'deliveredAt': _deliveredAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'carrier': serializeParam(
          _carrier,
          ParamType.String,
        ),
        'trackingNumber': serializeParam(
          _trackingNumber,
          ParamType.String,
        ),
        'trackingUrl': serializeParam(
          _trackingUrl,
          ParamType.String,
        ),
        'shippedAt': serializeParam(
          _shippedAt,
          ParamType.DateTime,
        ),
        'deliveredAt': serializeParam(
          _deliveredAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static FulfillmentDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      FulfillmentDataStruct(
        carrier: deserializeParam(
          data['carrier'],
          ParamType.String,
          false,
        ),
        trackingNumber: deserializeParam(
          data['trackingNumber'],
          ParamType.String,
          false,
        ),
        trackingUrl: deserializeParam(
          data['trackingUrl'],
          ParamType.String,
          false,
        ),
        shippedAt: deserializeParam(
          data['shippedAt'],
          ParamType.DateTime,
          false,
        ),
        deliveredAt: deserializeParam(
          data['deliveredAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'FulfillmentDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FulfillmentDataStruct &&
        carrier == other.carrier &&
        trackingNumber == other.trackingNumber &&
        trackingUrl == other.trackingUrl &&
        shippedAt == other.shippedAt &&
        deliveredAt == other.deliveredAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([carrier, trackingNumber, trackingUrl, shippedAt, deliveredAt]);
}

FulfillmentDataStruct createFulfillmentDataStruct({
  String? carrier,
  String? trackingNumber,
  String? trackingUrl,
  DateTime? shippedAt,
  DateTime? deliveredAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FulfillmentDataStruct(
      carrier: carrier,
      trackingNumber: trackingNumber,
      trackingUrl: trackingUrl,
      shippedAt: shippedAt,
      deliveredAt: deliveredAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FulfillmentDataStruct? updateFulfillmentDataStruct(
  FulfillmentDataStruct? fulfillmentData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fulfillmentData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFulfillmentDataStructData(
  Map<String, dynamic> firestoreData,
  FulfillmentDataStruct? fulfillmentData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fulfillmentData == null) {
    return;
  }
  if (fulfillmentData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fulfillmentData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fulfillmentDataData =
      getFulfillmentDataFirestoreData(fulfillmentData, forFieldValue);
  final nestedData =
      fulfillmentDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fulfillmentData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFulfillmentDataFirestoreData(
  FulfillmentDataStruct? fulfillmentData, [
  bool forFieldValue = false,
]) {
  if (fulfillmentData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fulfillmentData.toMap());

  // Add any Firestore field values
  mapToFirestore(fulfillmentData.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFulfillmentDataListFirestoreData(
  List<FulfillmentDataStruct>? fulfillmentDatas,
) =>
    fulfillmentDatas
        ?.map((e) => getFulfillmentDataFirestoreData(e, true))
        .toList() ??
    [];
