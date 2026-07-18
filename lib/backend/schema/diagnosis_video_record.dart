import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiagnosisVideoRecord extends FirestoreRecord {
  DiagnosisVideoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "acMakeId" field.
  DocumentReference? _acMakeId;
  DocumentReference? get acMakeId => _acMakeId;
  bool hasAcMakeId() => _acMakeId != null;

  // "acModelId" field.
  DocumentReference? _acModelId;
  DocumentReference? get acModelId => _acModelId;
  bool hasAcModelId() => _acModelId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "videoScript" field.
  String? _videoScript;
  String get videoScript => _videoScript ?? '';
  bool hasVideoScript() => _videoScript != null;

  // "partType" field.
  String? _partType;
  String get partType => _partType ?? '';
  bool hasPartType() => _partType != null;

  // "stepKey" field.
  String? _stepKey;
  String get stepKey => _stepKey ?? '';
  bool hasStepKey() => _stepKey != null;

  // "isStart" field.
  bool? _isStart;
  bool get isStart => _isStart ?? false;
  bool hasIsStart() => _isStart != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "videoQuestion" field.
  String? _videoQuestion;
  String get videoQuestion => _videoQuestion ?? '';
  bool hasVideoQuestion() => _videoQuestion != null;

  // "lastUpdatedBy" field.
  DocumentReference? _lastUpdatedBy;
  DocumentReference? get lastUpdatedBy => _lastUpdatedBy;
  bool hasLastUpdatedBy() => _lastUpdatedBy != null;

  // "lastUpdatedAt" field.
  DateTime? _lastUpdatedAt;
  DateTime? get lastUpdatedAt => _lastUpdatedAt;
  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  // "videoUrl" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _acMakeId = snapshotData['acMakeId'] as DocumentReference?;
    _acModelId = snapshotData['acModelId'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _videoScript = snapshotData['videoScript'] as String?;
    _partType = snapshotData['partType'] as String?;
    _stepKey = snapshotData['stepKey'] as String?;
    _isStart = snapshotData['isStart'] as bool?;
    _isActive = snapshotData['isActive'] as bool?;
    _videoQuestion = snapshotData['videoQuestion'] as String?;
    _lastUpdatedBy = snapshotData['lastUpdatedBy'] as DocumentReference?;
    _lastUpdatedAt = snapshotData['lastUpdatedAt'] as DateTime?;
    _videoUrl = snapshotData['videoUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DiagnosisVideo');

  static Stream<DiagnosisVideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiagnosisVideoRecord.fromSnapshot(s));

  static Future<DiagnosisVideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiagnosisVideoRecord.fromSnapshot(s));

  static DiagnosisVideoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiagnosisVideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiagnosisVideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiagnosisVideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiagnosisVideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiagnosisVideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiagnosisVideoRecordData({
  String? id,
  DocumentReference? acMakeId,
  DocumentReference? acModelId,
  String? title,
  String? description,
  String? videoScript,
  String? partType,
  String? stepKey,
  bool? isStart,
  bool? isActive,
  String? videoQuestion,
  DocumentReference? lastUpdatedBy,
  DateTime? lastUpdatedAt,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'acMakeId': acMakeId,
      'acModelId': acModelId,
      'title': title,
      'description': description,
      'videoScript': videoScript,
      'partType': partType,
      'stepKey': stepKey,
      'isStart': isStart,
      'isActive': isActive,
      'videoQuestion': videoQuestion,
      'lastUpdatedBy': lastUpdatedBy,
      'lastUpdatedAt': lastUpdatedAt,
      'videoUrl': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiagnosisVideoRecordDocumentEquality
    implements Equality<DiagnosisVideoRecord> {
  const DiagnosisVideoRecordDocumentEquality();

  @override
  bool equals(DiagnosisVideoRecord? e1, DiagnosisVideoRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.acMakeId == e2?.acMakeId &&
        e1?.acModelId == e2?.acModelId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.videoScript == e2?.videoScript &&
        e1?.partType == e2?.partType &&
        e1?.stepKey == e2?.stepKey &&
        e1?.isStart == e2?.isStart &&
        e1?.isActive == e2?.isActive &&
        e1?.videoQuestion == e2?.videoQuestion &&
        e1?.lastUpdatedBy == e2?.lastUpdatedBy &&
        e1?.lastUpdatedAt == e2?.lastUpdatedAt &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(DiagnosisVideoRecord? e) => const ListEquality().hash([
        e?.id,
        e?.acMakeId,
        e?.acModelId,
        e?.title,
        e?.description,
        e?.videoScript,
        e?.partType,
        e?.stepKey,
        e?.isStart,
        e?.isActive,
        e?.videoQuestion,
        e?.lastUpdatedBy,
        e?.lastUpdatedAt,
        e?.videoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is DiagnosisVideoRecord;
}
