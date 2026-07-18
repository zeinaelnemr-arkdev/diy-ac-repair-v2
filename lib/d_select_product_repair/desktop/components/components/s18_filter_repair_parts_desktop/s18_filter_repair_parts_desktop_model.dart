import '/backend/schema/enums/enums.dart';
import '/components/button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's18_filter_repair_parts_desktop_widget.dart'
    show S18FilterRepairPartsDesktopWidget;
import 'package:flutter/material.dart';

class S18FilterRepairPartsDesktopModel
    extends FlutterFlowModel<S18FilterRepairPartsDesktopWidget> {
  ///  Local state fields for this component.

  Parts? selectedPart;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-volt widget.
  FocusNode? textFieldVoltFocusNode;
  TextEditingController? textFieldVoltTextController;
  String? Function(BuildContext, String?)? textFieldVoltTextControllerValidator;
  // State field(s) for DropDown-hp widget.
  double? dropDownHpValue;
  FormFieldController<double>? dropDownHpValueController;
  // State field(s) for DropDown-rpm widget.
  int? dropDownRpmValue;
  FormFieldController<int>? dropDownRpmValueController;
  // State field(s) for DropDown-rotation widget.
  String? dropDownRotationValue;
  FormFieldController<String>? dropDownRotationValueController;
  // Model for Button.
  late Button2Model buttonModel1;
  // State field(s) for TextField-Rvolt widget.
  FocusNode? textFieldRvoltFocusNode;
  TextEditingController? textFieldRvoltTextController;
  String? Function(BuildContext, String?)?
      textFieldRvoltTextControllerValidator;
  // State field(s) for DropDown-amp widget.
  int? dropDownAmpValue;
  FormFieldController<int>? dropDownAmpValueController;
  // State field(s) for DropDown-Cvolt widget.
  int? dropDownCvoltValue;
  FormFieldController<int>? dropDownCvoltValueController;
  // State field(s) for DropDown-nop widget.
  int? dropDownNopValue;
  FormFieldController<int>? dropDownNopValueController;
  // Model for Button.
  late Button2Model buttonModel2;
  // State field(s) for DropDown-MFD1 widget.
  double? dropDownMFD1Value;
  FormFieldController<double>? dropDownMFD1ValueController;
  // State field(s) for DropDown-MFD2 widget.
  double? dropDownMFD2Value;
  FormFieldController<double>? dropDownMFD2ValueController;
  // State field(s) for TextField-cap-volt widget.
  FocusNode? textFieldCapVoltFocusNode;
  TextEditingController? textFieldCapVoltTextController;
  String? Function(BuildContext, String?)?
      textFieldCapVoltTextControllerValidator;
  // State field(s) for DropDown-type widget.
  String? dropDownTypeValue;
  FormFieldController<String>? dropDownTypeValueController;
  // State field(s) for DD-shap widget.
  String? dDShapValue;
  FormFieldController<String>? dDShapValueController;
  // Model for Button.
  late Button2Model buttonModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button2Model());
    buttonModel2 = createModel(context, () => Button2Model());
    buttonModel3 = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    textFieldVoltFocusNode?.dispose();
    textFieldVoltTextController?.dispose();

    buttonModel1.dispose();
    textFieldRvoltFocusNode?.dispose();
    textFieldRvoltTextController?.dispose();

    buttonModel2.dispose();
    textFieldCapVoltFocusNode?.dispose();
    textFieldCapVoltTextController?.dispose();

    buttonModel3.dispose();
  }
}
