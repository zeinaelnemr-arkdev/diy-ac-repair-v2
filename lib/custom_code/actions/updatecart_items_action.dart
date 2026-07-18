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

// Create a custom action to update qty in FFAppState().cart.cartItems by itemId. Inputs: String itemId, int newQty. Loop through FFAppState().cart.cartItems, find item where item.itemId == itemId, update its qty to newQty. Use FFAppState().update(() { ... }) to apply changes. Do not return anything.
Future updatecartItemsAction(DocumentReference itemId, int newQty) async {
  FFAppState().update(() {
    final cartItems = FFAppState().Cart.cartItems;
    for (int i = 0; i < cartItems.length; i++) {
      if (cartItems[i].itemId == itemId) {
        FFAppState().updateCartStruct((cart) {
          cart.cartItems[i].qty = newQty;
        });
        break;
      }
    }
  });
}
