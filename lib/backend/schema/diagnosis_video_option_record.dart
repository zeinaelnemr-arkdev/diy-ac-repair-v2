import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiagnosisVideoOptionRecord extends FirestoreRecord {
  DiagnosisVideoOptionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "diagnosisVideoRef" field.
  DocumentReference? _diagnosisVideoRef;
  DocumentReference? get diagnosisVideoRef => _diagnosisVideoRef;
  bool hasDiagnosisVideoRef() => _diagnosisVideoRef != null;

  // "buttonText" field.
  String? _buttonText;
  String get buttonText => _buttonText ?? '';
  bool hasButtonText() => _buttonText != null;

  // "nextStepKey" field.
  DocumentReference? _nextStepKey;
  DocumentReference? get nextStepKey => _nextStepKey;
  bool hasNextStepKey() => _nextStepKey != null;

  // "outcomeMessage" field.
  String? _outcomeMessage;
  String get outcomeMessage => _outcomeMessage ?? '';
  bool hasOutcomeMessage() => _outcomeMessage != null;

  // "displayOrder" field.
  int? _displayOrder;
  int get displayOrder => _displayOrder ?? 0;
  bool hasDisplayOrder() => _displayOrder != null;

  // "actionType" field.
  ActionType? _actionType;
  ActionType? get actionType => _actionType;
  bool hasActionType() => _actionType != null;

  // "targetPage" field.
  TargetPage? _targetPage;
  TargetPage? get targetPage => _targetPage;
  bool hasTargetPage() => _targetPage != null;

  // "targetPartType" field.
  Parts? _targetPartType;
  Parts? get targetPartType => _targetPartType;
  bool hasTargetPartType() => _targetPartType != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _diagnosisVideoRef =
        snapshotData['diagnosisVideoRef'] as DocumentReference?;
    _buttonText = snapshotData['buttonText'] as String?;
    _nextStepKey = snapshotData['nextStepKey'] as DocumentReference?;
    _outcomeMessage = snapshotData['outcomeMessage'] as String?;
    _displayOrder = castToType<int>(snapshotData['displayOrder']);
    _actionType = snapshotData['actionType'] is ActionType
        ? snapshotData['actionType']
        : deserializeEnum<ActionType>(snapshotData['actionType']);
    _targetPage = snapshotData['targetPage'] is TargetPage
        ? snapshotData['targetPage']
        : deserializeEnum<TargetPage>(snapshotData['targetPage']);
    _targetPartType = snapshotData['targetPartType'] is Parts
        ? snapshotData['targetPartType']
        : deserializeEnum<Parts>(snapshotData['targetPartType']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('diagnosisVideoOption');

  static Stream<DiagnosisVideoOptionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => DiagnosisVideoOptionRecord.fromSnapshot(s));

  static Future<DiagnosisVideoOptionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DiagnosisVideoOptionRecord.fromSnapshot(s));

  static DiagnosisVideoOptionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiagnosisVideoOptionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiagnosisVideoOptionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiagnosisVideoOptionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiagnosisVideoOptionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiagnosisVideoOptionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiagnosisVideoOptionRecordData({
  String? id,
  DocumentReference? diagnosisVideoRef,
  String? buttonText,
  DocumentReference? nextStepKey,
  String? outcomeMessage,
  int? displayOrder,
  ActionType? actionType,
  TargetPage? targetPage,
  Parts? targetPartType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'diagnosisVideoRef': diagnosisVideoRef,
      'buttonText': buttonText,
      'nextStepKey': nextStepKey,
      'outcomeMessage': outcomeMessage,
      'displayOrder': displayOrder,
      'actionType': actionType,
      'targetPage': targetPage,
      'targetPartType': targetPartType,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiagnosisVideoOptionRecordDocumentEquality
    implements Equality<DiagnosisVideoOptionRecord> {
  const DiagnosisVideoOptionRecordDocumentEquality();

  @override
  bool equals(DiagnosisVideoOptionRecord? e1, DiagnosisVideoOptionRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.diagnosisVideoRef == e2?.diagnosisVideoRef &&
        e1?.buttonText == e2?.buttonText &&
        e1?.nextStepKey == e2?.nextStepKey &&
        e1?.outcomeMessage == e2?.outcomeMessage &&
        e1?.displayOrder == e2?.displayOrder &&
        e1?.actionType == e2?.actionType &&
        e1?.targetPage == e2?.targetPage &&
        e1?.targetPartType == e2?.targetPartType;
  }

  @override
  int hash(DiagnosisVideoOptionRecord? e) => const ListEquality().hash([
        e?.id,
        e?.diagnosisVideoRef,
        e?.buttonText,
        e?.nextStepKey,
        e?.outcomeMessage,
        e?.displayOrder,
        e?.actionType,
        e?.targetPage,
        e?.targetPartType
      ]);

  @override
  bool isValidKey(Object? o) => o is DiagnosisVideoOptionRecord;
}
