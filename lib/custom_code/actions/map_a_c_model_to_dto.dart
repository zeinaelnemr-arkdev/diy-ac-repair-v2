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

// write a custom action take  list of "ACModel" collection as input when i call actionthen action map it to list of custom Data type  "acModelDTO" and return it as output
// Additional imports (if needed)
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<AcModelDTOStruct>> mapACModelToDto(
  List<ACModelRecord> acModelList,
) async {
  // Map ACModelRecord list to AcModelDTOStruct list
  final List<AcModelDTOStruct> acModelDTOList =
      acModelList.map((acModelRecord) {
    return AcModelDTOStruct(
      id: acModelRecord.reference,
      acMakeId: acModelRecord.acMakeId,
      name: acModelRecord.name,
      motorSpecId: acModelRecord.motorSpecsId,
      capacitorSpecsId: acModelRecord.capacitorSpecsId,
      contactorSpecId: acModelRecord.contactorSpecId,
    );
  }).toList();

  return acModelDTOList;
}
