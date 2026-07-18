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

Future<String> buildOrderEmailHtml(
  String? customerName,
  String? shippingAddress,
  String? phone,
  double subtotal,
  double shipping,
  double tax,
  double total,
  List<CartItemStruct> items,
  // Each item: { "name": String, "price": double, "canBeRented": bool }
) async {
  // Build items rows
  final StringBuffer itemRows = StringBuffer();
  final List<String> rentableItemNames = [];

  for (final item in items) {
    final String name = item.desc ?? '';
    final double price = (item.price ?? 0.0).toDouble();
    final bool canBeRented = item.isReturnable ?? false;

    if (canBeRented) rentableItemNames.add(name);

    final String badgeHtml = canBeRented
        ? '''
        <div style="margin-top:4px;">
          <span style="background-color:#e8f5e9;color:#2e7d32;font-size:11px;font-weight:bold;padding:2px 8px;border-radius:12px;">
            &#9851; Rentable
          </span>
        </div>'''
        : '';

    itemRows.write('''
      <div style="display:flex;justify-content:space-between;align-items:flex-start;padding:8px 0;border-bottom:1px solid #e8e8e8;">
        <div style="flex:1;color:#333333;">
          $name
          $badgeHtml
        </div>
        <div style="color:#333333;font-weight:bold;white-space:nowrap;margin-left:16px;">
          \$${price.toStringAsFixed(2)}
        </div>
      </div>''');
  }

  // Build rentable section
  String rentableSectionHtml = '';
  if (rentableItemNames.isNotEmpty) {
    final StringBuffer rentableList = StringBuffer();
    for (final name in rentableItemNames) {
      rentableList.write('<li style="margin-bottom:4px;">$name</li>');
    }

    rentableSectionHtml = '''
      <div style="background-color:#fff8e1;border-left:4px solid #f9a825;border-radius:4px;padding:14px 18px;margin-bottom:20px;">
        <div style="font-weight:bold;color:#e65100;margin-bottom:6px;font-size:14px;">&#9851; Did you know? Your tools can be rented out!</div>
        <p style="margin:0;color:#555555;line-height:1.6;">
          Some items in your order are eligible to be rented after use.
          This is a great way to recover value from tools you no longer need.
        </p>
        <ul style="margin:8px 0 0 0;padding-left:18px;color:#555555;">
          ${rentableList.toString()}
        </ul>
        <p style="margin-top:10px;color:#555555;">
          To arrange a rental, contact our admin at:
          <a href="mailto:admin@diyrepair.net" style="color:#1565c0;text-decoration:none;font-weight:bold;">admin@diyrepair.net</a>
        </p>
      </div>''';
  }

  return '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Order Confirmation – DIY AC Repair</title>
</head>
<body style="margin:0;padding:0;background-color:#f0f0f0;font-family:Arial,sans-serif;font-size:14px;color:#333333;">
  <div style="padding:32px 16px;">
    <div style="background-color:#ffffff;border-radius:8px;max-width:580px;margin:0 auto;padding:32px;box-shadow:0 1px 4px rgba(0,0,0,0.08);">

      <h2 style="margin:0 0 8px 0;font-size:20px;font-weight:bold;color:#111111;">Order Confirmed &#10003;</h2>
      <p style="color:#444444;margin:0 0 24px 0;line-height:1.5;">
        Thank you for your order! Your payment was processed successfully.
        Below is a summary of your order details.
      </p>

      <!-- 1. User Information -->
      <div style="background-color:#f5f5f5;border-radius:6px;padding:16px 20px;margin-bottom:20px;">
        <div style="margin-bottom:10px;">
          <span style="font-weight:bold;color:#222222;display:block;margin-bottom:2px;">Customer Name:</span>
          <span style="color:#444444;">$customerName</span>
        </div>
        <div style="margin-bottom:10px;">
          <span style="font-weight:bold;color:#222222;display:block;margin-bottom:2px;">Shipping Address:</span>
          <span style="color:#444444;">$shippingAddress</span>
        </div>
        <div>
          <span style="font-weight:bold;color:#222222;display:block;margin-bottom:2px;">Phone:</span>
          <span style="color:#444444;">$phone</span>
        </div>
      </div>

      <!-- 2. Order Cost -->
      <div style="background-color:#f5f5f5;border-radius:6px;padding:16px 20px;margin-bottom:20px;">
        <table style="width:100%;border-collapse:collapse;">
          <tr>
            <td style="padding:6px 0;color:#444444;">Subtotal</td>
            <td style="padding:6px 0;color:#444444;text-align:right;">\$${subtotal.toStringAsFixed(2)}</td>
          </tr>
          <tr>
            <td style="padding:6px 0;color:#444444;">Shipping</td>
            <td style="padding:6px 0;color:#444444;text-align:right;">\$${shipping.toStringAsFixed(2)}</td>
          </tr>
          <tr>
            <td style="padding:6px 0;color:#444444;">Tax</td>
            <td style="padding:6px 0;color:#444444;text-align:right;">\$${tax.toStringAsFixed(2)}</td>
          </tr>
          <tr>
            <td colspan="2" style="border-top:1px solid #dddddd;padding-top:4px;"></td>
          </tr>
          <tr>
            <td style="padding:6px 0;font-weight:bold;color:#111111;font-size:15px;">
              Total
              <span style="display:inline-block;background-color:#e8f5e9;color:#2e7d32;font-size:12px;font-weight:bold;padding:3px 10px;border-radius:12px;margin-left:8px;">PAID</span>
            </td>
            <td style="padding:6px 0;font-weight:bold;color:#111111;font-size:15px;text-align:right;">\$${total.toStringAsFixed(2)}</td>
          </tr>
        </table>
      </div>

      <!-- 3. Items List -->
      <div style="background-color:#f5f5f5;border-radius:6px;padding:16px 20px;margin-bottom:20px;">
        <span style="font-weight:bold;color:#222222;display:block;margin-bottom:10px;">Items Ordered:</span>
        ${itemRows.toString()}
      </div>

      <!-- 4. Rentable Tools Notice -->
      $rentableSectionHtml

      <div style="text-align:center;color:#888888;font-size:12px;margin-top:8px;">
        This message was generated automatically by DIY AC Repair system.
      </div>

    </div>
  </div>
</body>
</html>''';
}
