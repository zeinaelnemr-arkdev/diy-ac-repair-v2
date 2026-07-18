// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PaymentDataStruct extends FFFirebaseStruct {
  PaymentDataStruct({
    /// stripe
    String? provider,
    String? checkoutSessionId,
    String? paymentIntentId,
    String? currency,
    double? amountTotal,

    ///  (unpaid|paid|refunded|partial_refunded)
    ///
    String? status,
    DateTime? paidAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _provider = provider,
        _checkoutSessionId = checkoutSessionId,
        _paymentIntentId = paymentIntentId,
        _currency = currency,
        _amountTotal = amountTotal,
        _status = status,
        _paidAt = paidAt,
        super(firestoreUtilData);

  // "provider" field.
  String? _provider;
  String get provider => _provider ?? '';
  set provider(String? val) => _provider = val;

  bool hasProvider() => _provider != null;

  // "checkoutSessionId" field.
  String? _checkoutSessionId;
  String get checkoutSessionId => _checkoutSessionId ?? '';
  set checkoutSessionId(String? val) => _checkoutSessionId = val;

  bool hasCheckoutSessionId() => _checkoutSessionId != null;

  // "paymentIntentId" field.
  String? _paymentIntentId;
  String get paymentIntentId => _paymentIntentId ?? '';
  set paymentIntentId(String? val) => _paymentIntentId = val;

  bool hasPaymentIntentId() => _paymentIntentId != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "amountTotal" field.
  double? _amountTotal;
  double get amountTotal => _amountTotal ?? 0.0;
  set amountTotal(double? val) => _amountTotal = val;

  void incrementAmountTotal(double amount) =>
      amountTotal = amountTotal + amount;

  bool hasAmountTotal() => _amountTotal != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "paidAt" field.
  DateTime? _paidAt;
  DateTime? get paidAt => _paidAt;
  set paidAt(DateTime? val) => _paidAt = val;

  bool hasPaidAt() => _paidAt != null;

  static PaymentDataStruct fromMap(Map<String, dynamic> data) =>
      PaymentDataStruct(
        provider: data['provider'] as String?,
        checkoutSessionId: data['checkoutSessionId'] as String?,
        paymentIntentId: data['paymentIntentId'] as String?,
        currency: data['currency'] as String?,
        amountTotal: castToType<double>(data['amountTotal']),
        status: data['status'] as String?,
        paidAt: data['paidAt'] as DateTime?,
      );

  static PaymentDataStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'provider': _provider,
        'checkoutSessionId': _checkoutSessionId,
        'paymentIntentId': _paymentIntentId,
        'currency': _currency,
        'amountTotal': _amountTotal,
        'status': _status,
        'paidAt': _paidAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'provider': serializeParam(
          _provider,
          ParamType.String,
        ),
        'checkoutSessionId': serializeParam(
          _checkoutSessionId,
          ParamType.String,
        ),
        'paymentIntentId': serializeParam(
          _paymentIntentId,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'amountTotal': serializeParam(
          _amountTotal,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'paidAt': serializeParam(
          _paidAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static PaymentDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentDataStruct(
        provider: deserializeParam(
          data['provider'],
          ParamType.String,
          false,
        ),
        checkoutSessionId: deserializeParam(
          data['checkoutSessionId'],
          ParamType.String,
          false,
        ),
        paymentIntentId: deserializeParam(
          data['paymentIntentId'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        amountTotal: deserializeParam(
          data['amountTotal'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        paidAt: deserializeParam(
          data['paidAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'PaymentDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentDataStruct &&
        provider == other.provider &&
        checkoutSessionId == other.checkoutSessionId &&
        paymentIntentId == other.paymentIntentId &&
        currency == other.currency &&
        amountTotal == other.amountTotal &&
        status == other.status &&
        paidAt == other.paidAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        provider,
        checkoutSessionId,
        paymentIntentId,
        currency,
        amountTotal,
        status,
        paidAt
      ]);
}

PaymentDataStruct createPaymentDataStruct({
  String? provider,
  String? checkoutSessionId,
  String? paymentIntentId,
  String? currency,
  double? amountTotal,
  String? status,
  DateTime? paidAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentDataStruct(
      provider: provider,
      checkoutSessionId: checkoutSessionId,
      paymentIntentId: paymentIntentId,
      currency: currency,
      amountTotal: amountTotal,
      status: status,
      paidAt: paidAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentDataStruct? updatePaymentDataStruct(
  PaymentDataStruct? paymentData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentDataStructData(
  Map<String, dynamic> firestoreData,
  PaymentDataStruct? paymentData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentData == null) {
    return;
  }
  if (paymentData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentDataData =
      getPaymentDataFirestoreData(paymentData, forFieldValue);
  final nestedData =
      paymentDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentDataFirestoreData(
  PaymentDataStruct? paymentData, [
  bool forFieldValue = false,
]) {
  if (paymentData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentData.toMap());

  // Add any Firestore field values
  mapToFirestore(paymentData.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentDataListFirestoreData(
  List<PaymentDataStruct>? paymentDatas,
) =>
    paymentDatas?.map((e) => getPaymentDataFirestoreData(e, true)).toList() ??
    [];
