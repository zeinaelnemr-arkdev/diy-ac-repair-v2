import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  ItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "specType" field.
  String? _specType;
  String get specType => _specType ?? '';
  bool hasSpecType() => _specType != null;

  // "contactorSpecId" field.
  DocumentReference? _contactorSpecId;
  DocumentReference? get contactorSpecId => _contactorSpecId;
  bool hasContactorSpecId() => _contactorSpecId != null;

  // "miscId" field.
  DocumentReference? _miscId;
  DocumentReference? get miscId => _miscId;
  bool hasMiscIdField() => _miscId != null;

  // "partNumber" field.
  String? _partNumber;
  String get partNumber => _partNumber ?? '';
  bool hasPartNumber() => _partNumber != null;

  // "alternatePartNumbers" field.
  List<String>? _alternatePartNumbers;
  List<String> get alternatePartNumbers => _alternatePartNumbers ?? const [];
  bool hasAlternatePartNumbers() => _alternatePartNumbers != null;

  // "make" field.
  String? _make;
  String get make => _make ?? '';
  bool hasMake() => _make != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  bool hasWidth() => _width != null;

  // "depth" field.
  double? _depth;
  double get depth => _depth ?? 0.0;
  bool hasDepth() => _depth != null;

  // "commonIssues" field.
  List<String>? _commonIssues;
  List<String> get commonIssues => _commonIssues ?? const [];
  bool hasCommonIssues() => _commonIssues != null;

  // "qtyOnHand" field.
  int? _qtyOnHand;
  int get qtyOnHand => _qtyOnHand ?? 0;
  bool hasQtyOnHand() => _qtyOnHand != null;

  // "qtyReserved" field.
  int? _qtyReserved;
  int get qtyReserved => _qtyReserved ?? 0;
  bool hasQtyReserved() => _qtyReserved != null;

  // "qtyIncoming" field.
  int? _qtyIncoming;
  int get qtyIncoming => _qtyIncoming ?? 0;
  bool hasQtyIncoming() => _qtyIncoming != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "minStock" field.
  int? _minStock;
  int get minStock => _minStock ?? 0;
  bool hasMinStock() => _minStock != null;

  // "stockStatus" field.
  String? _stockStatus;
  String get stockStatus => _stockStatus ?? '';
  bool hasStockStatus() => _stockStatus != null;

  // "motorSpecsId" field.
  DocumentReference? _motorSpecsId;
  DocumentReference? get motorSpecsId => _motorSpecsId;
  bool hasMotorSpecsId() => _motorSpecsId != null;

  // "capacitorSpecsId" field.
  DocumentReference? _capacitorSpecsId;
  DocumentReference? get capacitorSpecsId => _capacitorSpecsId;
  bool hasCapacitorSpecsId() => _capacitorSpecsId != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  bool hasVendor() => _vendor != null;

  // "lastPurchasePrice" field.
  double? _lastPurchasePrice;
  double get lastPurchasePrice => _lastPurchasePrice ?? 0.0;
  bool hasLastPurchasePrice() => _lastPurchasePrice != null;

  // "lastPurchaseDate" field.
  DateTime? _lastPurchaseDate;
  DateTime? get lastPurchaseDate => _lastPurchaseDate;
  bool hasLastPurchaseDate() => _lastPurchaseDate != null;

  // "upc" field.
  String? _upc;
  String get upc => _upc ?? '';
  bool hasUpc() => _upc != null;

  // "salePrice" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "discountPrice" field.
  double? _discountPrice;
  double get discountPrice => _discountPrice ?? 0.0;
  bool hasDiscountPrice() => _discountPrice != null;

  // "taxPercentage" field.
  double? _taxPercentage;
  double get taxPercentage => _taxPercentage ?? 0.0;
  bool hasTaxPercentage() => _taxPercentage != null;

  // "isInStock" field.
  bool? _isInStock;
  bool get isInStock => _isInStock ?? false;
  bool hasIsInStock() => _isInStock != null;

  // "motorSpecId" field.
  DocumentReference? _motorSpecId;
  DocumentReference? get motorSpecId => _motorSpecId;
  bool hasMotorSpecId() => _motorSpecId != null;

  // "hasMiscId" field.
  bool? _hasMiscId;
  bool get hasMiscId => _hasMiscId ?? false;
  bool hasHasMiscId() => _hasMiscId != null;

  // "isReturnable" field.
  bool? _isReturnable;
  bool get isReturnable => _isReturnable ?? false;
  bool hasIsReturnable() => _isReturnable != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _specType = snapshotData['specType'] as String?;
    _contactorSpecId = snapshotData['contactorSpecId'] as DocumentReference?;
    _miscId = snapshotData['miscId'] as DocumentReference?;
    _partNumber = snapshotData['partNumber'] as String?;
    _alternatePartNumbers = getDataList(snapshotData['alternatePartNumbers']);
    _make = snapshotData['make'] as String?;
    _model = snapshotData['model'] as String?;
    _description = snapshotData['description'] as String?;
    _weight = castToType<double>(snapshotData['weight']);
    _height = castToType<double>(snapshotData['height']);
    _width = castToType<double>(snapshotData['width']);
    _depth = castToType<double>(snapshotData['depth']);
    _commonIssues = getDataList(snapshotData['commonIssues']);
    _qtyOnHand = castToType<int>(snapshotData['qtyOnHand']);
    _qtyReserved = castToType<int>(snapshotData['qtyReserved']);
    _qtyIncoming = castToType<int>(snapshotData['qtyIncoming']);
    _warehouseId = snapshotData['warehouseId'] as String?;
    _minStock = castToType<int>(snapshotData['minStock']);
    _stockStatus = snapshotData['stockStatus'] as String?;
    _motorSpecsId = snapshotData['motorSpecsId'] as DocumentReference?;
    _capacitorSpecsId = snapshotData['capacitorSpecsId'] as DocumentReference?;
    _vendor = snapshotData['vendor'] as String?;
    _lastPurchasePrice = castToType<double>(snapshotData['lastPurchasePrice']);
    _lastPurchaseDate = snapshotData['lastPurchaseDate'] as DateTime?;
    _upc = snapshotData['upc'] as String?;
    _salePrice = castToType<double>(snapshotData['salePrice']);
    _discountPrice = castToType<double>(snapshotData['discountPrice']);
    _taxPercentage = castToType<double>(snapshotData['taxPercentage']);
    _isInStock = snapshotData['isInStock'] as bool?;
    _motorSpecId = snapshotData['motorSpecId'] as DocumentReference?;
    _hasMiscId = snapshotData['hasMiscId'] as bool?;
    _isReturnable = snapshotData['isReturnable'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) => ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({
  String? id,
  String? specType,
  DocumentReference? contactorSpecId,
  DocumentReference? miscId,
  String? partNumber,
  String? make,
  String? model,
  String? description,
  double? weight,
  double? height,
  double? width,
  double? depth,
  int? qtyOnHand,
  int? qtyReserved,
  int? qtyIncoming,
  String? warehouseId,
  int? minStock,
  String? stockStatus,
  DocumentReference? motorSpecsId,
  DocumentReference? capacitorSpecsId,
  String? vendor,
  double? lastPurchasePrice,
  DateTime? lastPurchaseDate,
  String? upc,
  double? salePrice,
  double? discountPrice,
  double? taxPercentage,
  bool? isInStock,
  DocumentReference? motorSpecId,
  bool? hasMiscId,
  bool? isReturnable,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'specType': specType,
      'contactorSpecId': contactorSpecId,
      'miscId': miscId,
      'partNumber': partNumber,
      'make': make,
      'model': model,
      'description': description,
      'weight': weight,
      'height': height,
      'width': width,
      'depth': depth,
      'qtyOnHand': qtyOnHand,
      'qtyReserved': qtyReserved,
      'qtyIncoming': qtyIncoming,
      'warehouseId': warehouseId,
      'minStock': minStock,
      'stockStatus': stockStatus,
      'motorSpecsId': motorSpecsId,
      'capacitorSpecsId': capacitorSpecsId,
      'vendor': vendor,
      'lastPurchasePrice': lastPurchasePrice,
      'lastPurchaseDate': lastPurchaseDate,
      'upc': upc,
      'salePrice': salePrice,
      'discountPrice': discountPrice,
      'taxPercentage': taxPercentage,
      'isInStock': isInStock,
      'motorSpecId': motorSpecId,
      'hasMiscId': hasMiscId,
      'isReturnable': isReturnable,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.specType == e2?.specType &&
        e1?.contactorSpecId == e2?.contactorSpecId &&
        e1?.miscId == e2?.miscId &&
        e1?.partNumber == e2?.partNumber &&
        listEquality.equals(
            e1?.alternatePartNumbers, e2?.alternatePartNumbers) &&
        e1?.make == e2?.make &&
        e1?.model == e2?.model &&
        e1?.description == e2?.description &&
        e1?.weight == e2?.weight &&
        e1?.height == e2?.height &&
        e1?.width == e2?.width &&
        e1?.depth == e2?.depth &&
        listEquality.equals(e1?.commonIssues, e2?.commonIssues) &&
        e1?.qtyOnHand == e2?.qtyOnHand &&
        e1?.qtyReserved == e2?.qtyReserved &&
        e1?.qtyIncoming == e2?.qtyIncoming &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.minStock == e2?.minStock &&
        e1?.stockStatus == e2?.stockStatus &&
        e1?.motorSpecsId == e2?.motorSpecsId &&
        e1?.capacitorSpecsId == e2?.capacitorSpecsId &&
        e1?.vendor == e2?.vendor &&
        e1?.lastPurchasePrice == e2?.lastPurchasePrice &&
        e1?.lastPurchaseDate == e2?.lastPurchaseDate &&
        e1?.upc == e2?.upc &&
        e1?.salePrice == e2?.salePrice &&
        e1?.discountPrice == e2?.discountPrice &&
        e1?.taxPercentage == e2?.taxPercentage &&
        e1?.isInStock == e2?.isInStock &&
        e1?.motorSpecId == e2?.motorSpecId &&
        e1?.hasMiscId == e2?.hasMiscId &&
        e1?.isReturnable == e2?.isReturnable;
  }

  @override
  int hash(ItemsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.specType,
        e?.contactorSpecId,
        e?.miscId,
        e?.partNumber,
        e?.alternatePartNumbers,
        e?.make,
        e?.model,
        e?.description,
        e?.weight,
        e?.height,
        e?.width,
        e?.depth,
        e?.commonIssues,
        e?.qtyOnHand,
        e?.qtyReserved,
        e?.qtyIncoming,
        e?.warehouseId,
        e?.minStock,
        e?.stockStatus,
        e?.motorSpecsId,
        e?.capacitorSpecsId,
        e?.vendor,
        e?.lastPurchasePrice,
        e?.lastPurchaseDate,
        e?.upc,
        e?.salePrice,
        e?.discountPrice,
        e?.taxPercentage,
        e?.isInStock,
        e?.motorSpecId,
        e?.hasMiscId,
        e?.isReturnable
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}
