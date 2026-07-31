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

Future calculateCartTotal(String? shippingStr, String? taxStr) async {
  // Get the current payment/cart from app state
  final cart = FFAppState().Cart;

  // Calculate subtotal by iterating through cart items
  double subtotal = 0.0;
  for (final item in cart.cartItems) {
    subtotal += (item.price * item.qty);
  }

  // Get shipping and tax from the current payment struct
  final double shipping =
      double.tryParse(shippingStr ?? '') ?? (cart.shipping ?? 0.0);

  final double tax = double.tryParse(taxStr ?? '') ?? (cart.tax ?? 0.0);

  // Calculate total
    final double total = ((subtotal + shipping + tax) * 100).round() / 100;

  // Update the payment struct in app state with new subtotal and total
  FFAppState().updateCartStruct((c) => c
        ..subtotal = (subtotal * 100).round() / 100
    ..total = total
    ..shipping = shipping
    ..tax = tax);
}
