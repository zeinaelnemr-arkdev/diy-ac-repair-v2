// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContextStruct extends FFFirebaseStruct {
  ContextStruct({
    DocumentReference? acMakeId,
    DocumentReference? acModelId,
    String? serialNumber,
    List<DocumentReference>? selectedParts,
    String? source,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _acMakeId = acMakeId,
        _acModelId = acModelId,
        _serialNumber = serialNumber,
        _selectedParts = selectedParts,
        _source = source,
        super(firestoreUtilData);

  // "acMakeId" field.
  DocumentReference? _acMakeId;
  DocumentReference? get acMakeId => _acMakeId;
  set acMakeId(DocumentReference? val) => _acMakeId = val;

  bool hasAcMakeId() => _acMakeId != null;

  // "acModelId" field.
  DocumentReference? _acModelId;
  DocumentReference? get acModelId => _acModelId;
  set acModelId(DocumentReference? val) => _acModelId = val;

  bool hasAcModelId() => _acModelId != null;

  // "serialNumber" field.
  String? _serialNumber;
  String get serialNumber => _serialNumber ?? '';
  set serialNumber(String? val) => _serialNumber = val;

  bool hasSerialNumber() => _serialNumber != null;

  // "selectedParts" field.
  List<DocumentReference>? _selectedParts;
  List<DocumentReference> get selectedParts => _selectedParts ?? const [];
  set selectedParts(List<DocumentReference>? val) => _selectedParts = val;

  void updateSelectedParts(Function(List<DocumentReference>) updateFn) {
    updateFn(_selectedParts ??= []);
  }

  bool hasSelectedParts() => _selectedParts != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  static ContextStruct fromMap(Map<String, dynamic> data) => ContextStruct(
        acMakeId: data['acMakeId'] as DocumentReference?,
        acModelId: data['acModelId'] as DocumentReference?,
        serialNumber: data['serialNumber'] as String?,
        selectedParts: getDataList(data['selectedParts']),
        source: data['source'] as String?,
      );

  static ContextStruct? maybeFromMap(dynamic data) =>
      data is Map ? ContextStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'acMakeId': _acMakeId,
        'acModelId': _acModelId,
        'serialNumber': _serialNumber,
        'selectedParts': _selectedParts,
        'source': _source,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'acMakeId': serializeParam(
          _acMakeId,
          ParamType.DocumentReference,
        ),
        'acModelId': serializeParam(
          _acModelId,
          ParamType.DocumentReference,
        ),
        'serialNumber': serializeParam(
          _serialNumber,
          ParamType.String,
        ),
        'selectedParts': serializeParam(
          _selectedParts,
          ParamType.DocumentReference,
          isList: true,
        ),
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContextStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContextStruct(
        acMakeId: deserializeParam(
          data['acMakeId'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACMake'],
        ),
        acModelId: deserializeParam(
          data['acModelId'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['ACModel'],
        ),
        serialNumber: deserializeParam(
          data['serialNumber'],
          ParamType.String,
          false,
        ),
        selectedParts: deserializeParam<DocumentReference>(
          data['selectedParts'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['Items'],
        ),
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContextStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ContextStruct &&
        acMakeId == other.acMakeId &&
        acModelId == other.acModelId &&
        serialNumber == other.serialNumber &&
        listEquality.equals(selectedParts, other.selectedParts) &&
        source == other.source;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([acMakeId, acModelId, serialNumber, selectedParts, source]);
}

ContextStruct createContextStruct({
  DocumentReference? acMakeId,
  DocumentReference? acModelId,
  String? serialNumber,
  String? source,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ContextStruct(
      acMakeId: acMakeId,
      acModelId: acModelId,
      serialNumber: serialNumber,
      source: source,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ContextStruct? updateContextStruct(
  ContextStruct? context, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    context
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addContextStructData(
  Map<String, dynamic> firestoreData,
  ContextStruct? context,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (context == null) {
    return;
  }
  if (context.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && context.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final contextData = getContextFirestoreData(context, forFieldValue);
  final nestedData = contextData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = context.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getContextFirestoreData(
  ContextStruct? context, [
  bool forFieldValue = false,
]) {
  if (context == null) {
    return {};
  }
  final firestoreData = mapToFirestore(context.toMap());

  // Add any Firestore field values
  mapToFirestore(context.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getContextListFirestoreData(
  List<ContextStruct>? contexts,
) =>
    contexts?.map((e) => getContextFirestoreData(e, true)).toList() ?? [];
