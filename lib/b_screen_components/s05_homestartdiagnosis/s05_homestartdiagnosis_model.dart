import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/z_drafts/enter_manually_serial_number/enter_manually_serial_number_widget.dart';
import 's05_homestartdiagnosis_widget.dart' show S05HomestartdiagnosisWidget;
import 'package:flutter/material.dart';

class S05HomestartdiagnosisModel
    extends FlutterFlowModel<S05HomestartdiagnosisWidget> {
  ///  Local state fields for this component.

  List<AcMakeDTOStruct> acMakeFiltered = [];
  void addToAcMakeFiltered(AcMakeDTOStruct item) => acMakeFiltered.add(item);
  void removeFromAcMakeFiltered(AcMakeDTOStruct item) =>
      acMakeFiltered.remove(item);
  void removeAtIndexFromAcMakeFiltered(int index) =>
      acMakeFiltered.removeAt(index);
  void insertAtIndexInAcMakeFiltered(int index, AcMakeDTOStruct item) =>
      acMakeFiltered.insert(index, item);
  void updateAcMakeFilteredAtIndex(
          int index, Function(AcMakeDTOStruct) updateFn) =>
      acMakeFiltered[index] = updateFn(acMakeFiltered[index]);

  List<AcModelDTOStruct> acModelFiltered = [];
  void addToAcModelFiltered(AcModelDTOStruct item) => acModelFiltered.add(item);
  void removeFromAcModelFiltered(AcModelDTOStruct item) =>
      acModelFiltered.remove(item);
  void removeAtIndexFromAcModelFiltered(int index) =>
      acModelFiltered.removeAt(index);
  void insertAtIndexInAcModelFiltered(int index, AcModelDTOStruct item) =>
      acModelFiltered.insert(index, item);
  void updateAcModelFilteredAtIndex(
          int index, Function(AcModelDTOStruct) updateFn) =>
      acModelFiltered[index] = updateFn(acModelFiltered[index]);

  DocumentReference? selectedACMake;

  bool newAC = true;

  ///  State fields for stateful widgets in this component.

  // Model for Asterisk component.
  late AsteriskModel asteriskModel;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue;
  FormFieldController<String>? dropDownMakeValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for DropDown-Model widget.
  String? dropDownModelValue;
  FormFieldController<String>? dropDownModelValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for TextField-SN widget.
  FocusNode? textFieldSNFocusNode;
  TextEditingController? textFieldSNTextController;
  String? Function(BuildContext, String?)? textFieldSNTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for Enter_manuallySerial_Number component.
  late EnterManuallySerialNumberModel enterManuallySerialNumberModel;

  @override
  void initState(BuildContext context) {
    asteriskModel = createModel(context, () => AsteriskModel());
    enterManuallySerialNumberModel =
        createModel(context, () => EnterManuallySerialNumberModel());
  }

  @override
  void dispose() {
    asteriskModel.dispose();
    textFieldSNFocusNode?.dispose();
    textFieldSNTextController?.dispose();

    enterManuallySerialNumberModel.dispose();
  }
}
