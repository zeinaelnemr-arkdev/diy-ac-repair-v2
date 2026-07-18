// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAppStateStruct extends FFFirebaseStruct {
  UserAppStateStruct({
    String? displayName,
    String? email,
    List<String>? address,
    String? phone,
    List<String>? pin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _displayName = displayName,
        _email = email,
        _address = address,
        _phone = phone,
        _pin = pin,
        super(firestoreUtilData);

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "address" field.
  List<String>? _address;
  List<String> get address => _address ?? const [];
  set address(List<String>? val) => _address = val;

  void updateAddress(Function(List<String>) updateFn) {
    updateFn(_address ??= []);
  }

  bool hasAddress() => _address != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "PIN" field.
  List<String>? _pin;
  List<String> get pin => _pin ?? const [];
  set pin(List<String>? val) => _pin = val;

  void updatePin(Function(List<String>) updateFn) {
    updateFn(_pin ??= []);
  }

  bool hasPin() => _pin != null;

  static UserAppStateStruct fromMap(Map<String, dynamic> data) =>
      UserAppStateStruct(
        displayName: data['displayName'] as String?,
        email: data['email'] as String?,
        address: getDataList(data['address']),
        phone: data['phone'] as String?,
        pin: getDataList(data['PIN']),
      );

  static UserAppStateStruct? maybeFromMap(dynamic data) => data is Map
      ? UserAppStateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'displayName': _displayName,
        'email': _email,
        'address': _address,
        'phone': _phone,
        'PIN': _pin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
          isList: true,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'PIN': serializeParam(
          _pin,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static UserAppStateStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserAppStateStruct(
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        address: deserializeParam<String>(
          data['address'],
          ParamType.String,
          true,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        pin: deserializeParam<String>(
          data['PIN'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'UserAppStateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserAppStateStruct &&
        displayName == other.displayName &&
        email == other.email &&
        listEquality.equals(address, other.address) &&
        phone == other.phone &&
        listEquality.equals(pin, other.pin);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([displayName, email, address, phone, pin]);
}

UserAppStateStruct createUserAppStateStruct({
  String? displayName,
  String? email,
  String? phone,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserAppStateStruct(
      displayName: displayName,
      email: email,
      phone: phone,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserAppStateStruct? updateUserAppStateStruct(
  UserAppStateStruct? userAppState, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userAppState
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserAppStateStructData(
  Map<String, dynamic> firestoreData,
  UserAppStateStruct? userAppState,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userAppState == null) {
    return;
  }
  if (userAppState.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userAppState.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userAppStateData =
      getUserAppStateFirestoreData(userAppState, forFieldValue);
  final nestedData =
      userAppStateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userAppState.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserAppStateFirestoreData(
  UserAppStateStruct? userAppState, [
  bool forFieldValue = false,
]) {
  if (userAppState == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userAppState.toMap());

  // Add any Firestore field values
  mapToFirestore(userAppState.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserAppStateListFirestoreData(
  List<UserAppStateStruct>? userAppStates,
) =>
    userAppStates?.map((e) => getUserAppStateFirestoreData(e, true)).toList() ??
    [];
