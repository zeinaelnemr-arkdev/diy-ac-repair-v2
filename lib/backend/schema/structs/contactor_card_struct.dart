// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ContactorCardStruct extends FFFirebaseStruct {
  ContactorCardStruct({
    double? contCoilVolt,
    double? contratedVolt,
    double? contratedAmp,
    double? contLength,
    double? contWidth,
    double? contDepth,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _contCoilVolt = contCoilVolt,
        _contratedVolt = contratedVolt,
        _contratedAmp = contratedAmp,
        _contLength = contLength,
        _contWidth = contWidth,
        _contDepth = contDepth,
        super(firestoreUtilData);

  // "contCoilVolt" field.
  double? _contCoilVolt;
  double get contCoilVolt => _contCoilVolt ?? 0.0;
  set contCoilVolt(double? val) => _contCoilVolt = val;

  void incrementContCoilVolt(double amount) =>
      contCoilVolt = contCoilVolt + amount;

  bool hasContCoilVolt() => _contCoilVolt != null;

  // "contratedVolt" field.
  double? _contratedVolt;
  double get contratedVolt => _contratedVolt ?? 0.0;
  set contratedVolt(double? val) => _contratedVolt = val;

  void incrementContratedVolt(double amount) =>
      contratedVolt = contratedVolt + amount;

  bool hasContratedVolt() => _contratedVolt != null;

  // "contratedAmp" field.
  double? _contratedAmp;
  double get contratedAmp => _contratedAmp ?? 0.0;
  set contratedAmp(double? val) => _contratedAmp = val;

  void incrementContratedAmp(double amount) =>
      contratedAmp = contratedAmp + amount;

  bool hasContratedAmp() => _contratedAmp != null;

  // "contLength" field.
  double? _contLength;
  double get contLength => _contLength ?? 0.0;
  set contLength(double? val) => _contLength = val;

  void incrementContLength(double amount) => contLength = contLength + amount;

  bool hasContLength() => _contLength != null;

  // "contWidth" field.
  double? _contWidth;
  double get contWidth => _contWidth ?? 0.0;
  set contWidth(double? val) => _contWidth = val;

  void incrementContWidth(double amount) => contWidth = contWidth + amount;

  bool hasContWidth() => _contWidth != null;

  // "contDepth" field.
  double? _contDepth;
  double get contDepth => _contDepth ?? 0.0;
  set contDepth(double? val) => _contDepth = val;

  void incrementContDepth(double amount) => contDepth = contDepth + amount;

  bool hasContDepth() => _contDepth != null;

  static ContactorCardStruct fromMap(Map<String, dynamic> data) =>
      ContactorCardStruct(
        contCoilVolt: castToType<double>(data['contCoilVolt']),
        contratedVolt: castToType<double>(data['contratedVolt']),
        contratedAmp: castToType<double>(data['contratedAmp']),
        contLength: castToType<double>(data['contLength']),
        contWidth: castToType<double>(data['contWidth']),
        contDepth: castToType<double>(data['contDepth']),
      );

  static ContactorCardStruct? maybeFromMap(dynamic data) => data is Map
      ? ContactorCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'contCoilVolt': _contCoilVolt,
        'contratedVolt': _contratedVolt,
        'contratedAmp': _contratedAmp,
        'contLength': _contLength,
        'contWidth': _contWidth,
        'contDepth': _contDepth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'contCoilVolt': serializeParam(
          _contCoilVolt,
          ParamType.double,
        ),
        'contratedVolt': serializeParam(
          _contratedVolt,
          ParamType.double,
        ),
        'contratedAmp': serializeParam(
          _contratedAmp,
          ParamType.double,
        ),
        'contLength': serializeParam(
          _contLength,
          ParamType.double,
        ),
        'contWidth': serializeParam(
          _contWidth,
          ParamType.double,
        ),
        'contDepth': serializeParam(
          _contDepth,
          ParamType.double,
        ),
      }.withoutNulls;

  static ContactorCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContactorCardStruct(
        contCoilVolt: deserializeParam(
          data['contCoilVolt'],
          ParamType.double,
          false,
        ),
        contratedVolt: deserializeParam(
          data['contratedVolt'],
          ParamType.double,
          false,
        ),
        contratedAmp: deserializeParam(
          data['contratedAmp'],
          ParamType.double,
          false,
        ),
        contLength: deserializeParam(
          data['contLength'],
          ParamType.double,
          false,
        ),
        contWidth: deserializeParam(
          data['contWidth'],
          ParamType.double,
          false,
        ),
        contDepth: deserializeParam(
          data['contDepth'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ContactorCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContactorCardStruct &&
        contCoilVolt == other.contCoilVolt &&
        contratedVolt == other.contratedVolt &&
        contratedAmp == other.contratedAmp &&
        contLength == other.contLength &&
        contWidth == other.contWidth &&
        contDepth == other.contDepth;
  }

  @override
  int get hashCode => const ListEquality().hash([
        contCoilVolt,
        contratedVolt,
        contratedAmp,
        contLength,
        contWidth,
        contDepth
      ]);
}

ContactorCardStruct createContactorCardStruct({
  double? contCoilVolt,
  double? contratedVolt,
  double? contratedAmp,
  double? contLength,
  double? contWidth,
  double? contDepth,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ContactorCardStruct(
      contCoilVolt: contCoilVolt,
      contratedVolt: contratedVolt,
      contratedAmp: contratedAmp,
      contLength: contLength,
      contWidth: contWidth,
      contDepth: contDepth,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ContactorCardStruct? updateContactorCardStruct(
  ContactorCardStruct? contactorCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    contactorCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addContactorCardStructData(
  Map<String, dynamic> firestoreData,
  ContactorCardStruct? contactorCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (contactorCard == null) {
    return;
  }
  if (contactorCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && contactorCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final contactorCardData =
      getContactorCardFirestoreData(contactorCard, forFieldValue);
  final nestedData =
      contactorCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = contactorCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getContactorCardFirestoreData(
  ContactorCardStruct? contactorCard, [
  bool forFieldValue = false,
]) {
  if (contactorCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(contactorCard.toMap());

  // Add any Firestore field values
  mapToFirestore(contactorCard.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getContactorCardListFirestoreData(
  List<ContactorCardStruct>? contactorCards,
) =>
    contactorCards
        ?.map((e) => getContactorCardFirestoreData(e, true))
        .toList() ??
    [];
