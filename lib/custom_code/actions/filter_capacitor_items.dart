// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Create FlutterFlow custom action: inputs `DocumentReference? acModelRef`, `double? mfd1`, `double? mfd2`, `String? shape`, `String? type`, `int? volt`. Return `List<PartCardDTOStruct>`. If `acModelRef` not null, read ACModel and use `capacitorSpecId` to filter. Query `CapacitorSpec` with non-null filters (`microFarad1`,`microFarad2`,`shape`,`type`,`voltageRating`). Collect refs. Query `Items` where `specType=="capacitor"`, `capacitorSpecId in refs`, `isInStock==true`. Map to DTO.
// Additional imports (if needed)
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<PartCardDTOStruct>> filterCapacitorItems(
  DocumentReference? acModelRef,
  double? mfd1,
  double? mfd2,
  int? volt,
  String? type,
  String? shape,
) async {
  try {
    // Step 1: If acModelRef is provided, read ACModel and get capacitorSpecId filter
    List<DocumentReference> capacitorSpecRefs = [];

    // Step 2: Build query for CapacitorSpec collection with non-null filters
    Query capacitorSpecQuery =
        FirebaseFirestore.instance.collection('CapacitorSpec');

    if (mfd1 != null) {
      capacitorSpecQuery =
          capacitorSpecQuery.where('microFarad1', isEqualTo: mfd1);
    }
    if (mfd2 != null) {
      capacitorSpecQuery =
          capacitorSpecQuery.where('microFarad2', isEqualTo: mfd2);
    }
    if (shape != null && shape.isNotEmpty) {
      capacitorSpecQuery = capacitorSpecQuery.where('shape', isEqualTo: shape);
    }
    if (type != null && type.isNotEmpty) {
      capacitorSpecQuery = capacitorSpecQuery.where('type', isEqualTo: type);
    }
    if (volt != null) {
      capacitorSpecQuery =
          capacitorSpecQuery.where('voltageRating', isEqualTo: volt);
    }

    // If acModelRef is provided, get the capacitorSpecId from ACModel
    if (acModelRef != null) {
      final acModelSnapshot = await acModelRef.get();
      if (acModelSnapshot.exists) {
        final acModelData = acModelSnapshot.data() as Map<String, dynamic>?;
        if (acModelData != null && acModelData.containsKey('capacitorSpecId')) {
          final capacitorSpecId = acModelData['capacitorSpecId'];
          if (capacitorSpecId != null) {
            // Filter CapacitorSpec by the capacitorSpecId from ACModel
            if (capacitorSpecId is DocumentReference) {
              capacitorSpecQuery = capacitorSpecQuery
                  .where(FieldPath.documentId, isEqualTo: capacitorSpecId.id);
            } else if (capacitorSpecId is String) {
              capacitorSpecQuery = capacitorSpecQuery
                  .where(FieldPath.documentId, isEqualTo: capacitorSpecId);
            }
          }
        }
      }
    }

    // Execute CapacitorSpec query and collect refs
    final capacitorSpecSnapshot = await capacitorSpecQuery.get();
    Map<String, Map<String, dynamic>> specDataMap = {};

    for (final doc in capacitorSpecSnapshot.docs) {
      capacitorSpecRefs.add(doc.reference);
      specDataMap[doc.id] = doc.data() as Map<String, dynamic>;
    }

    // If no capacitor specs found, return empty list
    if (capacitorSpecRefs.isEmpty) {
      return [];
    }

    // Step 3: Query Items where specType == "capacitor", capacitorSpecId in refs, isInStock == true
    // Firestore 'whereIn' supports up to 30 items per query
    List<PartCardDTOStruct> results = [];
    const int chunkSize = 30;

    for (int i = 0; i < capacitorSpecRefs.length; i += chunkSize) {
      final chunk = capacitorSpecRefs.sublist(
        i,
        i + chunkSize > capacitorSpecRefs.length
            ? capacitorSpecRefs.length
            : i + chunkSize,
      );

      final itemsSnapshot = await FirebaseFirestore.instance
          .collection('Items')
          .where('specType', isEqualTo: 'CAPACITOR')
          .where('capacitorSpecId', whereIn: chunk)
          .where('isInStock', isEqualTo: true)
          .get();

      for (final itemDoc in itemsSnapshot.docs) {
        final data = itemDoc.data();
        final specRef = data['capacitorSpecId'] as DocumentReference?;
        final specData = specRef != null ? specDataMap[specRef.id] : null;

        // Map Firestore document to PartCardDTOStruct
        final partCard = PartCardDTOStruct(
          id: itemDoc.reference, // Doc Reference (Items)
          type: 'CAPACITOR',
          title: data['partNumber'] ?? '',
          desc: data['description'] ?? '',
          price: ((data['discountPrice'] as num?)?.toDouble() ?? 0) > 0
              ? (data['discountPrice'] as num).toDouble()
              : ((data['salePrice'] as num?)?.toDouble() ?? 0.0),
          image: data['image'] is List
              ? List<String>.from(data['image'])
              : [data['image'] as String? ?? ''],
          capacitorCard: CapacitorCardStruct(
            capacMFD1: (specData?['microFarad1'] as num?)?.toDouble() ?? 0.0,
            capacMFD2: (specData?['microFarad2'] as num?)?.toDouble() ?? 0.0,
            capacDiameter: (specData?['diameter'] as num?)?.toDouble() ?? 0.0,
            capacHeight: (specData?['height'] as num?)?.toDouble() ?? 0.0,
            capacWidth: (specData?['width'] as num?)?.toDouble() ?? 0.0,
            capacDepth: (specData?['depth'] as num?)?.toDouble() ?? 0.0,
            capacTempLow: (specData?['tempLow'] as num?)?.toInt() ?? 0,
            capacTempHigh: (specData?['tempHigh'] as num?)?.toInt() ?? 0,
          ),
          contactorCard: null,
          motorCard: null,
        );

        results.add(partCard);
      }
    }

    return results;
  } catch (e) {
    debugPrint('Error in filterCapacitorItems: $e');
    return [];
  }
}
