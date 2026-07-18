// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<OrderLinesStruct>> cartItemsToOrderLinesA(
  List<CartItemStruct> cartItems,
) async {
  if (cartItems.isEmpty) {
    return [];
  }

  return cartItems.map((cartItem) {
    final qty = cartItem.qty <= 0 ? 1 : cartItem.qty;
    final unitPrice = cartItem.price;

    return OrderLinesStruct(
      lineId: DateTime.now().microsecondsSinceEpoch.toString(),
      itemId: cartItem.itemId,
      qty: qty,
      unitPrice: unitPrice,
      title: cartItem.title,
      specType: cartItem.specType ?? 'tool',
      returnPolicySnapshot: ReturnPolicySnapshotStruct(
        returnable: cartItem.isReturnable,
      ),
    );
  }).toList();
}
