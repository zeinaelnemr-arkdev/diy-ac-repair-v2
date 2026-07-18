// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponsiveColorsStruct extends FFFirebaseStruct {
  ResponsiveColorsStruct({
    Color? primary,
    Color? secondary,
    Color? primaryText,
    Color? primaryBackground,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _primary = primary,
        _secondary = secondary,
        _primaryText = primaryText,
        _primaryBackground = primaryBackground,
        super(firestoreUtilData);

  // "primary" field.
  Color? _primary;
  Color get primary => _primary ?? const Color(0xFF202020);
  set primary(Color? val) => _primary = val;

  bool hasPrimary() => _primary != null;

  // "secondary" field.
  Color? _secondary;
  Color get secondary => _secondary ?? Colors.white;
  set secondary(Color? val) => _secondary = val;

  bool hasSecondary() => _secondary != null;

  // "primaryText" field.
  Color? _primaryText;
  Color get primaryText => _primaryText ?? const Color(0xFF202020);
  set primaryText(Color? val) => _primaryText = val;

  bool hasPrimaryText() => _primaryText != null;

  // "primaryBackground" field.
  Color? _primaryBackground;
  Color get primaryBackground => _primaryBackground ?? Colors.white;
  set primaryBackground(Color? val) => _primaryBackground = val;

  bool hasPrimaryBackground() => _primaryBackground != null;

  static ResponsiveColorsStruct fromMap(Map<String, dynamic> data) =>
      ResponsiveColorsStruct(
        primary: getSchemaColor(data['primary']),
        secondary: getSchemaColor(data['secondary']),
        primaryText: getSchemaColor(data['primaryText']),
        primaryBackground: getSchemaColor(data['primaryBackground']),
      );

  static ResponsiveColorsStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponsiveColorsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'primary': _primary,
        'secondary': _secondary,
        'primaryText': _primaryText,
        'primaryBackground': _primaryBackground,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'primary': serializeParam(
          _primary,
          ParamType.Color,
        ),
        'secondary': serializeParam(
          _secondary,
          ParamType.Color,
        ),
        'primaryText': serializeParam(
          _primaryText,
          ParamType.Color,
        ),
        'primaryBackground': serializeParam(
          _primaryBackground,
          ParamType.Color,
        ),
      }.withoutNulls;

  static ResponsiveColorsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ResponsiveColorsStruct(
        primary: deserializeParam(
          data['primary'],
          ParamType.Color,
          false,
        ),
        secondary: deserializeParam(
          data['secondary'],
          ParamType.Color,
          false,
        ),
        primaryText: deserializeParam(
          data['primaryText'],
          ParamType.Color,
          false,
        ),
        primaryBackground: deserializeParam(
          data['primaryBackground'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'ResponsiveColorsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponsiveColorsStruct &&
        primary == other.primary &&
        secondary == other.secondary &&
        primaryText == other.primaryText &&
        primaryBackground == other.primaryBackground;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([primary, secondary, primaryText, primaryBackground]);
}

ResponsiveColorsStruct createResponsiveColorsStruct({
  Color? primary,
  Color? secondary,
  Color? primaryText,
  Color? primaryBackground,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResponsiveColorsStruct(
      primary: primary,
      secondary: secondary,
      primaryText: primaryText,
      primaryBackground: primaryBackground,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResponsiveColorsStruct? updateResponsiveColorsStruct(
  ResponsiveColorsStruct? responsiveColors, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    responsiveColors
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResponsiveColorsStructData(
  Map<String, dynamic> firestoreData,
  ResponsiveColorsStruct? responsiveColors,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (responsiveColors == null) {
    return;
  }
  if (responsiveColors.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && responsiveColors.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final responsiveColorsData =
      getResponsiveColorsFirestoreData(responsiveColors, forFieldValue);
  final nestedData =
      responsiveColorsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = responsiveColors.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResponsiveColorsFirestoreData(
  ResponsiveColorsStruct? responsiveColors, [
  bool forFieldValue = false,
]) {
  if (responsiveColors == null) {
    return {};
  }
  final firestoreData = mapToFirestore(responsiveColors.toMap());

  // Add any Firestore field values
  mapToFirestore(responsiveColors.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResponsiveColorsListFirestoreData(
  List<ResponsiveColorsStruct>? responsiveColorss,
) =>
    responsiveColorss
        ?.map((e) => getResponsiveColorsFirestoreData(e, true))
        .toList() ??
    [];
