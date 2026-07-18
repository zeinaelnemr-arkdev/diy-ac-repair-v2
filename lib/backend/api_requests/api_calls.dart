import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Payments Group Code

class PaymentsGroup {
  static String getBaseUrl() => 'https://api.stripe.com/v1/';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer sk_test_51T2VrQ0XCBpwpAtmFHwlrc4sJBN09AHpYCJifeT0zVNb1K0blHCz52liAVbdGz479k4Y4kDSaabGCmSN0sCOBqxc00P8RxdVzs',
  };
  static GetPaymentByIdCall getPaymentByIdCall = GetPaymentByIdCall();
}

class GetPaymentByIdCall {
  Future<ApiCallResponse> call({
    String? paymentIntentId = 'pi_3TgWUU0XCBpwpAtm0YzlHJKe',
  }) async {
    final baseUrl = PaymentsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPaymentById',
      apiUrl: '${baseUrl}payment_intents/${paymentIntentId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer sk_test_51T2VrQ0XCBpwpAtmFHwlrc4sJBN09AHpYCJifeT0zVNb1K0blHCz52liAVbdGz479k4Y4kDSaabGCmSN0sCOBqxc00P8RxdVzs',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? paymentId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  int? paidAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount_received''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
}

/// End Payments Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
