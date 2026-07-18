// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CartItemStruct extends FFFirebaseStruct {
  CartItemStruct({
    DocumentReference? itemId,
    String? title,

    /// useful if you want to group motor / contactor / capacitor
    String? specType,

    /// show small technical detail under title
    String? desc,

    /// $$
    double? price,
    int? qty,
    bool? isReturnable,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _itemId = itemId,
        _title = title,
        _specType = specType,
        _desc = desc,
        _price = price,
        _qty = qty,
        _isReturnable = isReturnable,
        super(firestoreUtilData);

  // "itemId" field.
  DocumentReference? _itemId;
  DocumentReference? get itemId => _itemId;
  set itemId(DocumentReference? val) => _itemId = val;

  bool hasItemId() => _itemId != null;

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

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  set qty(int? val) => _qty = val;

  void incrementQty(int amount) => qty = qty + amount;

  bool hasQty() => _qty != null;

  // "isReturnable" field.
  bool? _isReturnable;
  bool get isReturnable => _isReturnable ?? false;
  set isReturnable(bool? val) => _isReturnable = val;

  bool hasIsReturnable() => _isReturnable != null;

  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        itemId: data['itemId'] as DocumentReference?,
        title: data['title'] as String?,
        specType: data['specType'] as String?,
        desc: data['desc'] as String?,
        price: castToType<double>(data['price']),
        qty: castToType<int>(data['qty']),
        isReturnable: data['isReturnable'] as bool?,
      );

  static CartItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'itemId': _itemId,
        'title': _title,
        'specType': _specType,
        'desc': _desc,
        'price': _price,
        'qty': _qty,
        'isReturnable': _isReturnable,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'itemId': serializeParam(
          _itemId,
          ParamType.DocumentReference,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'specType': serializeParam(
          _specType,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'isReturnable': serializeParam(
          _isReturnable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CartItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemStruct(
        itemId: deserializeParam(
          data['itemId'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Items'],
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
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        isReturnable: deserializeParam(
          data['isReturnable'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CartItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemStruct &&
        itemId == other.itemId &&
        title == other.title &&
        specType == other.specType &&
        desc == other.desc &&
        price == other.price &&
        qty == other.qty &&
        isReturnable == other.isReturnable;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([itemId, title, specType, desc, price, qty, isReturnable]);
}

CartItemStruct createCartItemStruct({
  DocumentReference? itemId,
  String? title,
  String? specType,
  String? desc,
  double? price,
  int? qty,
  bool? isReturnable,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartItemStruct(
      itemId: itemId,
      title: title,
      specType: specType,
      desc: desc,
      price: price,
      qty: qty,
      isReturnable: isReturnable,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartItemStruct? updateCartItemStruct(
  CartItemStruct? cartItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartItemStructData(
  Map<String, dynamic> firestoreData,
  CartItemStruct? cartItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartItem == null) {
    return;
  }
  if (cartItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartItemData = getCartItemFirestoreData(cartItem, forFieldValue);
  final nestedData = cartItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartItemFirestoreData(
  CartItemStruct? cartItem, [
  bool forFieldValue = false,
]) {
  if (cartItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartItem.toMap());

  // Add any Firestore field values
  mapToFirestore(cartItem.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartItemListFirestoreData(
  List<CartItemStruct>? cartItems,
) =>
    cartItems?.map((e) => getCartItemFirestoreData(e, true)).toList() ?? [];
