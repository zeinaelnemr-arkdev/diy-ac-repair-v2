// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartCardDTOStruct extends FFFirebaseStruct {
  PartCardDTOStruct({
    /// item id
    DocumentReference? id,
    String? type,
    String? title,
    String? desc,
    double? price,
    List<String>? image,
    MotorCardStruct? motorCard,
    CapacitorCardStruct? capacitorCard,
    ContactorCardStruct? contactorCard,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _type = type,
        _title = title,
        _desc = desc,
        _price = price,
        _image = image,
        _motorCard = motorCard,
        _capacitorCard = capacitorCard,
        _contactorCard = contactorCard,
        super(firestoreUtilData);

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  set image(List<String>? val) => _image = val;

  void updateImage(Function(List<String>) updateFn) {
    updateFn(_image ??= []);
  }

  bool hasImage() => _image != null;

  // "motorCard" field.
  MotorCardStruct? _motorCard;
  MotorCardStruct get motorCard => _motorCard ?? MotorCardStruct();
  set motorCard(MotorCardStruct? val) => _motorCard = val;

  void updateMotorCard(Function(MotorCardStruct) updateFn) {
    updateFn(_motorCard ??= MotorCardStruct());
  }

  bool hasMotorCard() => _motorCard != null;

  // "capacitorCard" field.
  CapacitorCardStruct? _capacitorCard;
  CapacitorCardStruct get capacitorCard =>
      _capacitorCard ?? CapacitorCardStruct();
  set capacitorCard(CapacitorCardStruct? val) => _capacitorCard = val;

  void updateCapacitorCard(Function(CapacitorCardStruct) updateFn) {
    updateFn(_capacitorCard ??= CapacitorCardStruct());
  }

  bool hasCapacitorCard() => _capacitorCard != null;

  // "contactorCard" field.
  ContactorCardStruct? _contactorCard;
  ContactorCardStruct get contactorCard =>
      _contactorCard ?? ContactorCardStruct();
  set contactorCard(ContactorCardStruct? val) => _contactorCard = val;

  void updateContactorCard(Function(ContactorCardStruct) updateFn) {
    updateFn(_contactorCard ??= ContactorCardStruct());
  }

  bool hasContactorCard() => _contactorCard != null;

  static PartCardDTOStruct fromMap(Map<String, dynamic> data) =>
      PartCardDTOStruct(
        id: data['id'] as DocumentReference?,
        type: data['type'] as String?,
        title: data['title'] as String?,
        desc: data['desc'] as String?,
        price: castToType<double>(data['price']),
        image: getDataList(data['image']),
        motorCard: data['motorCard'] is MotorCardStruct
            ? data['motorCard']
            : MotorCardStruct.maybeFromMap(data['motorCard']),
        capacitorCard: data['capacitorCard'] is CapacitorCardStruct
            ? data['capacitorCard']
            : CapacitorCardStruct.maybeFromMap(data['capacitorCard']),
        contactorCard: data['contactorCard'] is ContactorCardStruct
            ? data['contactorCard']
            : ContactorCardStruct.maybeFromMap(data['contactorCard']),
      );

  static PartCardDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? PartCardDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'type': _type,
        'title': _title,
        'desc': _desc,
        'price': _price,
        'image': _image,
        'motorCard': _motorCard?.toMap(),
        'capacitorCard': _capacitorCard?.toMap(),
        'contactorCard': _contactorCard?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
          isList: true,
        ),
        'motorCard': serializeParam(
          _motorCard,
          ParamType.DataStruct,
        ),
        'capacitorCard': serializeParam(
          _capacitorCard,
          ParamType.DataStruct,
        ),
        'contactorCard': serializeParam(
          _contactorCard,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PartCardDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      PartCardDTOStruct(
        id: deserializeParam(
          data['id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Items'],
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        image: deserializeParam<String>(
          data['image'],
          ParamType.String,
          true,
        ),
        motorCard: deserializeStructParam(
          data['motorCard'],
          ParamType.DataStruct,
          false,
          structBuilder: MotorCardStruct.fromSerializableMap,
        ),
        capacitorCard: deserializeStructParam(
          data['capacitorCard'],
          ParamType.DataStruct,
          false,
          structBuilder: CapacitorCardStruct.fromSerializableMap,
        ),
        contactorCard: deserializeStructParam(
          data['contactorCard'],
          ParamType.DataStruct,
          false,
          structBuilder: ContactorCardStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PartCardDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PartCardDTOStruct &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        desc == other.desc &&
        price == other.price &&
        listEquality.equals(image, other.image) &&
        motorCard == other.motorCard &&
        capacitorCard == other.capacitorCard &&
        contactorCard == other.contactorCard;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        type,
        title,
        desc,
        price,
        image,
        motorCard,
        capacitorCard,
        contactorCard
      ]);
}

PartCardDTOStruct createPartCardDTOStruct({
  DocumentReference? id,
  String? type,
  String? title,
  String? desc,
  double? price,
  MotorCardStruct? motorCard,
  CapacitorCardStruct? capacitorCard,
  ContactorCardStruct? contactorCard,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PartCardDTOStruct(
      id: id,
      type: type,
      title: title,
      desc: desc,
      price: price,
      motorCard: motorCard ?? (clearUnsetFields ? MotorCardStruct() : null),
      capacitorCard:
          capacitorCard ?? (clearUnsetFields ? CapacitorCardStruct() : null),
      contactorCard:
          contactorCard ?? (clearUnsetFields ? ContactorCardStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PartCardDTOStruct? updatePartCardDTOStruct(
  PartCardDTOStruct? partCardDTO, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    partCardDTO
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPartCardDTOStructData(
  Map<String, dynamic> firestoreData,
  PartCardDTOStruct? partCardDTO,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (partCardDTO == null) {
    return;
  }
  if (partCardDTO.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && partCardDTO.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final partCardDTOData =
      getPartCardDTOFirestoreData(partCardDTO, forFieldValue);
  final nestedData =
      partCardDTOData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = partCardDTO.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPartCardDTOFirestoreData(
  PartCardDTOStruct? partCardDTO, [
  bool forFieldValue = false,
]) {
  if (partCardDTO == null) {
    return {};
  }
  final firestoreData = mapToFirestore(partCardDTO.toMap());

  // Handle nested data for "motorCard" field.
  addMotorCardStructData(
    firestoreData,
    partCardDTO.hasMotorCard() ? partCardDTO.motorCard : null,
    'motorCard',
    forFieldValue,
  );

  // Handle nested data for "capacitorCard" field.
  addCapacitorCardStructData(
    firestoreData,
    partCardDTO.hasCapacitorCard() ? partCardDTO.capacitorCard : null,
    'capacitorCard',
    forFieldValue,
  );

  // Handle nested data for "contactorCard" field.
  addContactorCardStructData(
    firestoreData,
    partCardDTO.hasContactorCard() ? partCardDTO.contactorCard : null,
    'contactorCard',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(partCardDTO.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPartCardDTOListFirestoreData(
  List<PartCardDTOStruct>? partCardDTOs,
) =>
    partCardDTOs?.map((e) => getPartCardDTOFirestoreData(e, true)).toList() ??
    [];
