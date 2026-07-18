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

// write a custom action take  list of "ACMake" collection as input when i call actionthen action map it to list of custom Data type  "acMakeDTO" and return it as output
// Additional imports (if needed)
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<AcMakeDTOStruct>> mapACMakeToDto(
  List<ACMakeRecord> acMakeList,
) async {
  // Map ACMakeRecord list to AcMakeDTOStruct list
  final List<AcMakeDTOStruct> acMakeDTOList = acMakeList.map((acMakeRecord) {
    return AcMakeDTOStruct(id: acMakeRecord.reference, name: acMakeRecord.name);
  }).toList();

  return acMakeDTOList;
}
