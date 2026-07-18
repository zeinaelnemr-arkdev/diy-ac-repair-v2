// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartStruct extends FFFirebaseStruct {
  CartStruct({
    List<CartItemStruct>? cartItems,
    double? subtotal,
    double? shipping,
    double? tax,
    double? total,
    String? comment,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cartItems = cartItems,
        _subtotal = subtotal,
        _shipping = shipping,
        _tax = tax,
        _total = total,
        _comment = comment,
        super(firestoreUtilData);

  // "cartItems" field.
  List<CartItemStruct>? _cartItems;
  List<CartItemStruct> get cartItems => _cartItems ?? const [];
  set cartItems(List<CartItemStruct>? val) => _cartItems = val;

  void updateCartItems(Function(List<CartItemStruct>) updateFn) {
    updateFn(_cartItems ??= []);
  }

  bool hasCartItems() => _cartItems != null;

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

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  static CartStruct fromMap(Map<String, dynamic> data) => CartStruct(
        cartItems: getStructList(
          data['cartItems'],
          CartItemStruct.fromMap,
        ),
        subtotal: castToType<double>(data['subtotal']),
        shipping: castToType<double>(data['shipping']),
        tax: castToType<double>(data['tax']),
        total: castToType<double>(data['total']),
        comment: data['comment'] as String?,
      );

  static CartStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cartItems': _cartItems?.map((e) => e.toMap()).toList(),
        'subtotal': _subtotal,
        'shipping': _shipping,
        'tax': _tax,
        'total': _total,
        'comment': _comment,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cartItems': serializeParam(
          _cartItems,
          ParamType.DataStruct,
          isList: true,
        ),
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
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartStruct(
        cartItems: deserializeStructParam<CartItemStruct>(
          data['cartItems'],
          ParamType.DataStruct,
          true,
          structBuilder: CartItemStruct.fromSerializableMap,
        ),
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
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CartStruct &&
        listEquality.equals(cartItems, other.cartItems) &&
        subtotal == other.subtotal &&
        shipping == other.shipping &&
        tax == other.tax &&
        total == other.total &&
        comment == other.comment;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([cartItems, subtotal, shipping, tax, total, comment]);
}

CartStruct createCartStruct({
  double? subtotal,
  double? shipping,
  double? tax,
  double? total,
  String? comment,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartStruct(
      subtotal: subtotal,
      shipping: shipping,
      tax: tax,
      total: total,
      comment: comment,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartStruct? updateCartStruct(
  CartStruct? cart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartStructData(
  Map<String, dynamic> firestoreData,
  CartStruct? cart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cart == null) {
    return;
  }
  if (cart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && cart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartData = getCartFirestoreData(cart, forFieldValue);
  final nestedData = cartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartFirestoreData(
  CartStruct? cart, [
  bool forFieldValue = false,
]) {
  if (cart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cart.toMap());

  // Add any Firestore field values
  mapToFirestore(cart.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartListFirestoreData(
  List<CartStruct>? carts,
) =>
    carts?.map((e) => getCartFirestoreData(e, true)).toList() ?? [];
