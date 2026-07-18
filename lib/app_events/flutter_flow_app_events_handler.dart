import 'dart:async';
import 'package:flutter/foundation.dart';
import '/flutter_flow/nav/nav.dart';

import 'index.dart';

/// Handles global events
Future<void> handleGlobalEvent(FFAppEvent event) async {
  if (kDebugMode) {
    debugPrint('Processing event: ${event.runtimeType}');
  }
  final context = appNavigatorKey.currentContext;
  if (context == null) {
    if (kDebugMode) {
      debugPrint('No context found while handling event: ${event.runtimeType}');
    }
    return;
  }
  switch (event) {
    default:
      return;
  }
}
