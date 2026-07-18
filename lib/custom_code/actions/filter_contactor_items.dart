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

//import '/backend/schema/structs/index.dart';
//import '/flutter_flow/flutter_flow_util.dart';

// Create FlutterFlow custom action: inputs DocumentReference? acModelRef, double? ratedVolt,double? coilVoltage,double? ratedAmp, int? numberOfPoles. Return List<PartCardDTOStruct>. If acModelRef not null, read ACModel and get contactorSpecId. Query ContactorSpec with this ref if exists, plus non-null filters. Collect refs. Query Items where specType=="contactor", contactorSpecId in refs, isInStock==true. Map Item + ContactorSpec to PartCardDTO.
//import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<PartCardDTOStruct>> filterContactorItems(
  DocumentReference? acModelRef,
  double? ratedVolt,
  double? ratedAmp,
  double? coilVoltage,
  int? numberOfPoles,
) async {
  try {
    // Step 1: If acModelRef is provided, read ACModel and get contactorSpecId
    DocumentReference? contactorSpecRefFromModel;

    if (acModelRef != null) {
      final acModelSnapshot = await acModelRef.get();
      if (acModelSnapshot.exists) {
        final acModelData = acModelSnapshot.data() as Map<String, dynamic>?;
        if (acModelData != null && acModelData.containsKey('contactorSpecId')) {
          contactorSpecRefFromModel =
              acModelData['contactorSpecId'] as DocumentReference?;
        }
      }
    }

    // Step 2: Query ContactorSpec collection with filters
    Query contactorSpecQuery =
        FirebaseFirestore.instance.collection('ContactorSpec');

    if (ratedVolt != null) {
      contactorSpecQuery =
          contactorSpecQuery.where('ratedVolt', isEqualTo: ratedVolt);
    }
    if (coilVoltage != null) {
      contactorSpecQuery =
          contactorSpecQuery.where('coilVoltage', isEqualTo: coilVoltage);
    }
    if (ratedAmp != null) {
      contactorSpecQuery =
          contactorSpecQuery.where('ratedAmp', isEqualTo: ratedAmp);
    }
    if (numberOfPoles != null) {
      contactorSpecQuery =
          contactorSpecQuery.where('numberOfPoles', isEqualTo: numberOfPoles);
    }

    final contactorSpecSnapshot = await contactorSpecQuery.get();

    // Step 3: Collect refs from query results
    final Set<String> contactorSpecRefPaths = {};
    final Map<String, Map<String, dynamic>> contactorSpecDataMap = {};

    for (final doc in contactorSpecSnapshot.docs) {
      contactorSpecRefPaths.add(doc.reference.path);
      contactorSpecDataMap[doc.reference.path] =
          doc.data() as Map<String, dynamic>;
    }

    // Also include the ref from acModel if it exists and matches
    if (contactorSpecRefFromModel != null) {
      if (!contactorSpecRefPaths.contains(contactorSpecRefFromModel.path)) {
        // Fetch this specific ContactorSpec doc
        final specDoc = await contactorSpecRefFromModel.get();
        if (specDoc.exists) {
          contactorSpecRefPaths.add(contactorSpecRefFromModel.path);
          contactorSpecDataMap[contactorSpecRefFromModel.path] =
              specDoc.data() as Map<String, dynamic>;
        }
      }
    }

    if (contactorSpecRefPaths.isEmpty) {
      return [];
    }

    // Step 4: Collect DocumentReferences for the spec IDs
    final List<DocumentReference> specRefs = contactorSpecRefPaths
        .map((path) => FirebaseFirestore.instance.doc(path))
        .toList();

    // Step 5: Query Items where specType == "contactor", contactorSpecId in refs, isInStock == true
    // Firestore 'whereIn' supports up to 30 items per query
    final List<PartCardDTOStruct> results = [];

    const int chunkSize = 30;
    for (int i = 0; i < specRefs.length; i += chunkSize) {
      final chunk = specRefs.sublist(
        i,
        i + chunkSize > specRefs.length ? specRefs.length : i + chunkSize,
      );

      final itemsSnapshot = await FirebaseFirestore.instance
          .collection('Items')
          .where('specType', isEqualTo: 'CONTRACTOR')
          .where('contactorSpecId', whereIn: chunk)
          .where('isInStock', isEqualTo: true)
          .get();

      // Step 6: Map Item + ContactorSpec to PartCardDTOStruct
      for (final itemDoc in itemsSnapshot.docs) {
        final itemData = itemDoc.data();

        final contactorSpecRef =
            itemData['contactorSpecId'] as DocumentReference?;
        Map<String, dynamic>? specData;

        if (contactorSpecRef != null) {
          specData = contactorSpecDataMap[contactorSpecRef.path];
          if (specData == null) {
            // Fetch if not already in map
            final specDoc = await contactorSpecRef.get();
            if (specDoc.exists) {
              specData = specDoc.data() as Map<String, dynamic>?;
              if (specData != null) {
                contactorSpecDataMap[contactorSpecRef.path] = specData;
              }
            }
          }
        }

        final partCardDTO = PartCardDTOStruct(
          id: itemDoc.reference, // Doc Reference (Items)
          type: 'CONTACTOR',
          title: itemData['partNumber'] as String? ?? '',
          desc: itemData['description'] as String? ?? '',
          price: ((itemData['discountPrice'] as num?)?.toDouble() ?? 0) > 0
              ? (itemData['discountPrice'] as num).toDouble()
              : ((itemData['salePrice'] as num?)?.toDouble() ?? 0.0),
          image: itemData['image'] is List
              ? List<String>.from(itemData['image'])
              : [itemData['image'] as String? ?? ''],
          contactorCard: ContactorCardStruct(
            contCoilVolt: (specData?['coilVoltage'] as num?)?.toDouble() ?? 0.0,
            contratedVolt: (specData?['ratedVolt'] as num?)?.toDouble() ?? 0.0,
            contratedAmp: (specData?['ratedAmp'] as num?)?.toDouble() ?? 0.0,
            contLength: (specData?['length'] as num?)?.toDouble() ?? 0.0,
            contWidth: (specData?['width'] as num?)?.toDouble() ?? 0.0,
            contDepth: (specData?['depth'] as num?)?.toDouble() ?? 0.0,
          ),
        );

        results.add(partCardDTO);
      }
    }

    return results;
  } catch (e) {
    print('filterContactorItems error: $e');
    return [];
  }
}
