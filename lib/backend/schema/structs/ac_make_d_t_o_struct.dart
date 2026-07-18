// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AcMakeDTOStruct extends FFFirebaseStruct {
  AcMakeDTOStruct({
    DocumentReference? id,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        super(firestoreUtilData);

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static AcMakeDTOStruct fromMap(Map<String, dynamic> data) => AcMakeDTOStruct(
        id: data['id'] as DocumentReference?,
        name: data['name'] as String?,
      );

  static AcMakeDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? AcMakeDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static AcMakeDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      AcMakeDTOStruct(
        id: deserializeParam(
          data['id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACMake'],
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AcMakeDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AcMakeDTOStruct && id == other.id && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name]);
}

AcMakeDTOStruct createAcMakeDTOStruct({
  DocumentReference? id,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AcMakeDTOStruct(
      id: id,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AcMakeDTOStruct? updateAcMakeDTOStruct(
  AcMakeDTOStruct? acMakeDTO, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    acMakeDTO
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAcMakeDTOStructData(
  Map<String, dynamic> firestoreData,
  AcMakeDTOStruct? acMakeDTO,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (acMakeDTO == null) {
    return;
  }
  if (acMakeDTO.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && acMakeDTO.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final acMakeDTOData = getAcMakeDTOFirestoreData(acMakeDTO, forFieldValue);
  final nestedData = acMakeDTOData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = acMakeDTO.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAcMakeDTOFirestoreData(
  AcMakeDTOStruct? acMakeDTO, [
  bool forFieldValue = false,
]) {
  if (acMakeDTO == null) {
    return {};
  }
  final firestoreData = mapToFirestore(acMakeDTO.toMap());

  // Add any Firestore field values
  mapToFirestore(acMakeDTO.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAcMakeDTOListFirestoreData(
  List<AcMakeDTOStruct>? acMakeDTOs,
) =>
    acMakeDTOs?.map((e) => getAcMakeDTOFirestoreData(e, true)).toList() ?? [];
