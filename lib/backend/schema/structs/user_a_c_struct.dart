// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserACStruct extends FFFirebaseStruct {
  UserACStruct({
    DocumentReference? acMake,
    DocumentReference? acModel,
    String? serialNumber,
    DocumentReference? motorSpecIdRef,
    DocumentReference? capacitorSpecIdRef,
    DocumentReference? contactorSpecIdRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _acMake = acMake,
        _acModel = acModel,
        _serialNumber = serialNumber,
        _motorSpecIdRef = motorSpecIdRef,
        _capacitorSpecIdRef = capacitorSpecIdRef,
        _contactorSpecIdRef = contactorSpecIdRef,
        super(firestoreUtilData);

  // "acMake" field.
  DocumentReference? _acMake;
  DocumentReference? get acMake => _acMake;
  set acMake(DocumentReference? val) => _acMake = val;

  bool hasAcMake() => _acMake != null;

  // "acModel" field.
  DocumentReference? _acModel;
  DocumentReference? get acModel => _acModel;
  set acModel(DocumentReference? val) => _acModel = val;

  bool hasAcModel() => _acModel != null;

  // "serialNumber" field.
  String? _serialNumber;
  String get serialNumber => _serialNumber ?? '';
  set serialNumber(String? val) => _serialNumber = val;

  bool hasSerialNumber() => _serialNumber != null;

  // "motorSpecIdRef" field.
  DocumentReference? _motorSpecIdRef;
  DocumentReference? get motorSpecIdRef => _motorSpecIdRef;
  set motorSpecIdRef(DocumentReference? val) => _motorSpecIdRef = val;

  bool hasMotorSpecIdRef() => _motorSpecIdRef != null;

  // "capacitorSpecIdRef" field.
  DocumentReference? _capacitorSpecIdRef;
  DocumentReference? get capacitorSpecIdRef => _capacitorSpecIdRef;
  set capacitorSpecIdRef(DocumentReference? val) => _capacitorSpecIdRef = val;

  bool hasCapacitorSpecIdRef() => _capacitorSpecIdRef != null;

  // "contactorSpecIdRef" field.
  DocumentReference? _contactorSpecIdRef;
  DocumentReference? get contactorSpecIdRef => _contactorSpecIdRef;
  set contactorSpecIdRef(DocumentReference? val) => _contactorSpecIdRef = val;

  bool hasContactorSpecIdRef() => _contactorSpecIdRef != null;

  static UserACStruct fromMap(Map<String, dynamic> data) => UserACStruct(
        acMake: data['acMake'] as DocumentReference?,
        acModel: data['acModel'] as DocumentReference?,
        serialNumber: data['serialNumber'] as String?,
        motorSpecIdRef: data['motorSpecIdRef'] as DocumentReference?,
        capacitorSpecIdRef: data['capacitorSpecIdRef'] as DocumentReference?,
        contactorSpecIdRef: data['contactorSpecIdRef'] as DocumentReference?,
      );

  static UserACStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserACStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'acMake': _acMake,
        'acModel': _acModel,
        'serialNumber': _serialNumber,
        'motorSpecIdRef': _motorSpecIdRef,
        'capacitorSpecIdRef': _capacitorSpecIdRef,
        'contactorSpecIdRef': _contactorSpecIdRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'acMake': serializeParam(
          _acMake,
          ParamType.DocumentReference,
        ),
        'acModel': serializeParam(
          _acModel,
          ParamType.DocumentReference,
        ),
        'serialNumber': serializeParam(
          _serialNumber,
          ParamType.String,
        ),
        'motorSpecIdRef': serializeParam(
          _motorSpecIdRef,
          ParamType.DocumentReference,
        ),
        'capacitorSpecIdRef': serializeParam(
          _capacitorSpecIdRef,
          ParamType.DocumentReference,
        ),
        'contactorSpecIdRef': serializeParam(
          _contactorSpecIdRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static UserACStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserACStruct(
        acMake: deserializeParam(
          data['acMake'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACMake'],
        ),
        acModel: deserializeParam(
          data['acModel'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACModel'],
        ),
        serialNumber: deserializeParam(
          data['serialNumber'],
          ParamType.String,
          false,
        ),
        motorSpecIdRef: deserializeParam(
          data['motorSpecIdRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['MotorSpec'],
        ),
        capacitorSpecIdRef: deserializeParam(
          data['capacitorSpecIdRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['CapacitorSpec'],
        ),
        contactorSpecIdRef: deserializeParam(
          data['contactorSpecIdRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ContactorSpec'],
        ),
      );

  @override
  String toString() => 'UserACStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserACStruct &&
        acMake == other.acMake &&
        acModel == other.acModel &&
        serialNumber == other.serialNumber &&
        motorSpecIdRef == other.motorSpecIdRef &&
        capacitorSpecIdRef == other.capacitorSpecIdRef &&
        contactorSpecIdRef == other.contactorSpecIdRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        acMake,
        acModel,
        serialNumber,
        motorSpecIdRef,
        capacitorSpecIdRef,
        contactorSpecIdRef
      ]);
}

UserACStruct createUserACStruct({
  DocumentReference? acMake,
  DocumentReference? acModel,
  String? serialNumber,
  DocumentReference? motorSpecIdRef,
  DocumentReference? capacitorSpecIdRef,
  DocumentReference? contactorSpecIdRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserACStruct(
      acMake: acMake,
      acModel: acModel,
      serialNumber: serialNumber,
      motorSpecIdRef: motorSpecIdRef,
      capacitorSpecIdRef: capacitorSpecIdRef,
      contactorSpecIdRef: contactorSpecIdRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserACStruct? updateUserACStruct(
  UserACStruct? userAC, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userAC
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserACStructData(
  Map<String, dynamic> firestoreData,
  UserACStruct? userAC,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userAC == null) {
    return;
  }
  if (userAC.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userAC.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userACData = getUserACFirestoreData(userAC, forFieldValue);
  final nestedData = userACData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userAC.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserACFirestoreData(
  UserACStruct? userAC, [
  bool forFieldValue = false,
]) {
  if (userAC == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userAC.toMap());

  // Add any Firestore field values
  mapToFirestore(userAC.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserACListFirestoreData(
  List<UserACStruct>? userACs,
) =>
    userACs?.map((e) => getUserACFirestoreData(e, true)).toList() ?? [];
