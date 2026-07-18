import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "status" field.
  OrderStatus? _status;
  OrderStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "customerSnap" field.
  CustomerStruct? _customerSnap;
  CustomerStruct get customerSnap => _customerSnap ?? CustomerStruct();
  bool hasCustomerSnap() => _customerSnap != null;

  // "contextSelection" field.
  ContextStruct? _contextSelection;
  ContextStruct get contextSelection => _contextSelection ?? ContextStruct();
  bool hasContextSelection() => _contextSelection != null;

  // "lines" field.
  List<OrderLinesStruct>? _lines;
  List<OrderLinesStruct> get lines => _lines ?? const [];
  bool hasLines() => _lines != null;

  // "totalsSnap" field.
  TotalSnapStruct? _totalsSnap;
  TotalSnapStruct get totalsSnap => _totalsSnap ?? TotalSnapStruct();
  bool hasTotalsSnap() => _totalsSnap != null;

  // "payment" field.
  PaymentDataStruct? _payment;
  PaymentDataStruct get payment => _payment ?? PaymentDataStruct();
  bool hasPayment() => _payment != null;

  // "fulfillment" field.
  FulfillmentDataStruct? _fulfillment;
  FulfillmentDataStruct get fulfillment =>
      _fulfillment ?? FulfillmentDataStruct();
  bool hasFulfillment() => _fulfillment != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _orderNumber = snapshotData['orderNumber'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _status = snapshotData['status'] is OrderStatus
        ? snapshotData['status']
        : deserializeEnum<OrderStatus>(snapshotData['status']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _customerSnap = snapshotData['customerSnap'] is CustomerStruct
        ? snapshotData['customerSnap']
        : CustomerStruct.maybeFromMap(snapshotData['customerSnap']);
    _contextSelection = snapshotData['contextSelection'] is ContextStruct
        ? snapshotData['contextSelection']
        : ContextStruct.maybeFromMap(snapshotData['contextSelection']);
    _lines = getStructList(
      snapshotData['lines'],
      OrderLinesStruct.fromMap,
    );
    _totalsSnap = snapshotData['totalsSnap'] is TotalSnapStruct
        ? snapshotData['totalsSnap']
        : TotalSnapStruct.maybeFromMap(snapshotData['totalsSnap']);
    _payment = snapshotData['payment'] is PaymentDataStruct
        ? snapshotData['payment']
        : PaymentDataStruct.maybeFromMap(snapshotData['payment']);
    _fulfillment = snapshotData['fulfillment'] is FulfillmentDataStruct
        ? snapshotData['fulfillment']
        : FulfillmentDataStruct.maybeFromMap(snapshotData['fulfillment']);
    _comment = snapshotData['comment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderNumber,
  DocumentReference? uid,
  OrderStatus? status,
  DateTime? createdAt,
  DateTime? updatedAt,
  CustomerStruct? customerSnap,
  ContextStruct? contextSelection,
  TotalSnapStruct? totalsSnap,
  PaymentDataStruct? payment,
  FulfillmentDataStruct? fulfillment,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderNumber': orderNumber,
      'uid': uid,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'customerSnap': CustomerStruct().toMap(),
      'contextSelection': ContextStruct().toMap(),
      'totalsSnap': TotalSnapStruct().toMap(),
      'payment': PaymentDataStruct().toMap(),
      'fulfillment': FulfillmentDataStruct().toMap(),
      'comment': comment,
    }.withoutNulls,
  );

  // Handle nested data for "customerSnap" field.
  addCustomerStructData(firestoreData, customerSnap, 'customerSnap');

  // Handle nested data for "contextSelection" field.
  addContextStructData(firestoreData, contextSelection, 'contextSelection');

  // Handle nested data for "totalsSnap" field.
  addTotalSnapStructData(firestoreData, totalsSnap, 'totalsSnap');

  // Handle nested data for "payment" field.
  addPaymentDataStructData(firestoreData, payment, 'payment');

  // Handle nested data for "fulfillment" field.
  addFulfillmentDataStructData(firestoreData, fulfillment, 'fulfillment');

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderNumber == e2?.orderNumber &&
        e1?.uid == e2?.uid &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.customerSnap == e2?.customerSnap &&
        e1?.contextSelection == e2?.contextSelection &&
        listEquality.equals(e1?.lines, e2?.lines) &&
        e1?.totalsSnap == e2?.totalsSnap &&
        e1?.payment == e2?.payment &&
        e1?.fulfillment == e2?.fulfillment &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderNumber,
        e?.uid,
        e?.status,
        e?.createdAt,
        e?.updatedAt,
        e?.customerSnap,
        e?.contextSelection,
        e?.lines,
        e?.totalsSnap,
        e?.payment,
        e?.fulfillment,
        e?.comment
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
