// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderLinesStruct extends FFFirebaseStruct {
  OrderLinesStruct({
    String? lineId,
    DocumentReference? itemId,
    int? qty,
    double? unitPrice,
    String? title,
    String? specType,
    String? partNumber,
    String? image,
    double? taxCategory,
    ReturnPolicySnapshotStruct? returnPolicySnapshot,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lineId = lineId,
        _itemId = itemId,
        _qty = qty,
        _unitPrice = unitPrice,
        _title = title,
        _specType = specType,
        _partNumber = partNumber,
        _image = image,
        _taxCategory = taxCategory,
        _returnPolicySnapshot = returnPolicySnapshot,
        super(firestoreUtilData);

  // "lineId" field.
  String? _lineId;
  String get lineId => _lineId ?? '';
  set lineId(String? val) => _lineId = val;

  bool hasLineId() => _lineId != null;

  // "itemId" field.
  DocumentReference? _itemId;
  DocumentReference? get itemId => _itemId;
  set itemId(DocumentReference? val) => _itemId = val;

  bool hasItemId() => _itemId != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  set qty(int? val) => _qty = val;

  void incrementQty(int amount) => qty = qty + amount;

  bool hasQty() => _qty != null;

  // "unitPrice" field.
  double? _unitPrice;
  double get unitPrice => _unitPrice ?? 0.0;
  set unitPrice(double? val) => _unitPrice = val;

  void incrementUnitPrice(double amount) => unitPrice = unitPrice + amount;

  bool hasUnitPrice() => _unitPrice != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "specType" field.
  String? _specType;
  String get specType => _specType ?? '';
  set specType(String? val) => _specType = val;

  bool hasSpecType() => _specType != null;

  // "partNumber" field.
  String? _partNumber;
  String get partNumber => _partNumber ?? '';
  set partNumber(String? val) => _partNumber = val;

  bool hasPartNumber() => _partNumber != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "taxCategory" field.
  double? _taxCategory;
  double get taxCategory => _taxCategory ?? 0.0;
  set taxCategory(double? val) => _taxCategory = val;

  void incrementTaxCategory(double amount) =>
      taxCategory = taxCategory + amount;

  bool hasTaxCategory() => _taxCategory != null;

  // "returnPolicySnapshot" field.
  ReturnPolicySnapshotStruct? _returnPolicySnapshot;
  ReturnPolicySnapshotStruct get returnPolicySnapshot =>
      _returnPolicySnapshot ?? ReturnPolicySnapshotStruct();
  set returnPolicySnapshot(ReturnPolicySnapshotStruct? val) =>
      _returnPolicySnapshot = val;

  void updateReturnPolicySnapshot(
      Function(ReturnPolicySnapshotStruct) updateFn) {
    updateFn(_returnPolicySnapshot ??= ReturnPolicySnapshotStruct());
  }

  bool hasReturnPolicySnapshot() => _returnPolicySnapshot != null;

  static OrderLinesStruct fromMap(Map<String, dynamic> data) =>
      OrderLinesStruct(
        lineId: data['lineId'] as String?,
        itemId: data['itemId'] as DocumentReference?,
        qty: castToType<int>(data['qty']),
        unitPrice: castToType<double>(data['unitPrice']),
        title: data['title'] as String?,
        specType: data['specType'] as String?,
        partNumber: data['partNumber'] as String?,
        image: data['image'] as String?,
        taxCategory: castToType<double>(data['taxCategory']),
        returnPolicySnapshot:
            data['returnPolicySnapshot'] is ReturnPolicySnapshotStruct
                ? data['returnPolicySnapshot']
                : ReturnPolicySnapshotStruct.maybeFromMap(
                    data['returnPolicySnapshot']),
      );

  static OrderLinesStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderLinesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'lineId': _lineId,
        'itemId': _itemId,
        'qty': _qty,
        'unitPrice': _unitPrice,
        'title': _title,
        'specType': _specType,
        'partNumber': _partNumber,
        'image': _image,
        'taxCategory': _taxCategory,
        'returnPolicySnapshot': _returnPolicySnapshot?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lineId': serializeParam(
          _lineId,
          ParamType.String,
        ),
        'itemId': serializeParam(
          _itemId,
          ParamType.DocumentReference,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'unitPrice': serializeParam(
          _unitPrice,
          ParamType.double,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'specType': serializeParam(
          _specType,
          ParamType.String,
        ),
        'partNumber': serializeParam(
          _partNumber,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'taxCategory': serializeParam(
          _taxCategory,
          ParamType.double,
        ),
        'returnPolicySnapshot': serializeParam(
          _returnPolicySnapshot,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OrderLinesStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderLinesStruct(
        lineId: deserializeParam(
          data['lineId'],
          ParamType.String,
          false,
        ),
        itemId: deserializeParam(
          data['itemId'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Items'],
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        unitPrice: deserializeParam(
          data['unitPrice'],
          ParamType.double,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        specType: deserializeParam(
          data['specType'],
          ParamType.String,
          false,
        ),
        partNumber: deserializeParam(
          data['partNumber'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        taxCategory: deserializeParam(
          data['taxCategory'],
          ParamType.double,
          false,
        ),
        returnPolicySnapshot: deserializeStructParam(
          data['returnPolicySnapshot'],
          ParamType.DataStruct,
          false,
          structBuilder: ReturnPolicySnapshotStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrderLinesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderLinesStruct &&
        lineId == other.lineId &&
        itemId == other.itemId &&
        qty == other.qty &&
        unitPrice == other.unitPrice &&
        title == other.title &&
        specType == other.specType &&
        partNumber == other.partNumber &&
        image == other.image &&
        taxCategory == other.taxCategory &&
        returnPolicySnapshot == other.returnPolicySnapshot;
  }

  @override
  int get hashCode => const ListEquality().hash([
        lineId,
        itemId,
        qty,
        unitPrice,
        title,
        specType,
        partNumber,
        image,
        taxCategory,
        returnPolicySnapshot
      ]);
}

OrderLinesStruct createOrderLinesStruct({
  String? lineId,
  DocumentReference? itemId,
  int? qty,
  double? unitPrice,
  String? title,
  String? specType,
  String? partNumber,
  String? image,
  double? taxCategory,
  ReturnPolicySnapshotStruct? returnPolicySnapshot,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderLinesStruct(
      lineId: lineId,
      itemId: itemId,
      qty: qty,
      unitPrice: unitPrice,
      title: title,
      specType: specType,
      partNumber: partNumber,
      image: image,
      taxCategory: taxCategory,
      returnPolicySnapshot: returnPolicySnapshot ??
          (clearUnsetFields ? ReturnPolicySnapshotStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderLinesStruct? updateOrderLinesStruct(
  OrderLinesStruct? orderLines, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderLines
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderLinesStructData(
  Map<String, dynamic> firestoreData,
  OrderLinesStruct? orderLines,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderLines == null) {
    return;
  }
  if (orderLines.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderLines.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderLinesData = getOrderLinesFirestoreData(orderLines, forFieldValue);
  final nestedData = orderLinesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderLines.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderLinesFirestoreData(
  OrderLinesStruct? orderLines, [
  bool forFieldValue = false,
]) {
  if (orderLines == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderLines.toMap());

  // Handle nested data for "returnPolicySnapshot" field.
  addReturnPolicySnapshotStructData(
    firestoreData,
    orderLines.hasReturnPolicySnapshot()
        ? orderLines.returnPolicySnapshot
        : null,
    'returnPolicySnapshot',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(orderLines.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderLinesListFirestoreData(
  List<OrderLinesStruct>? orderLiness,
) =>
    orderLiness?.map((e) => getOrderLinesFirestoreData(e, true)).toList() ?? [];
