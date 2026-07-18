import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/d_select_product_repair/mobile/components/filter_item/filter_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'serlect_product_mobile_widget.dart' show SerlectProductMobileWidget;
import 'package:flutter/material.dart';

class SerlectProductMobileModel
    extends FlutterFlowModel<SerlectProductMobileWidget> {
  ///  Local state fields for this component.

  Parts? selectedPartCS;

  List<PartCardDTOStruct> partsList = [];
  void addToPartsList(PartCardDTOStruct item) => partsList.add(item);
  void removeFromPartsList(PartCardDTOStruct item) => partsList.remove(item);
  void removeAtIndexFromPartsList(int index) => partsList.removeAt(index);
  void insertAtIndexInPartsList(int index, PartCardDTOStruct item) =>
      partsList.insert(index, item);
  void updatePartsListAtIndex(
          int index, Function(PartCardDTOStruct) updateFn) =>
      partsList[index] = updateFn(partsList[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - filterMotorItems] action in Serlect_Product_Mobile widget.
  List<PartCardDTOStruct>? motorItemsOnPageMob;
  // Stores action output result for [Custom Action - filterContactorItems] action in Serlect_Product_Mobile widget.
  List<PartCardDTOStruct>? contItemsOnPageMob;
  // Stores action output result for [Custom Action - filterCapacitorItems] action in Serlect_Product_Mobile widget.
  List<PartCardDTOStruct>? capacItemsOnPageMob;
  // Model for FilterItem.
  late FilterItemModel filterItemModel1;
  // Stores action output result for [Custom Action - filterMotorItems] action in FilterItem widget.
  List<PartCardDTOStruct>? motorItemsOnCallbackMob;
  // Model for FilterItem.
  late FilterItemModel filterItemModel2;
  // Stores action output result for [Custom Action - filterCapacitorItems] action in FilterItem widget.
  List<PartCardDTOStruct>? capacItemsOnCallbackMob;
  // Model for FilterItem.
  late FilterItemModel filterItemModel3;
  // Stores action output result for [Custom Action - filterContactorItems] action in FilterItem widget.
  List<PartCardDTOStruct>? contItemsOnCallbackMob;
  // State field(s) for TextFieldVolt widget.
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
  // Stores action output result for [Custom Action - filterMotorItems] action in Button widget.
  List<PartCardDTOStruct>? motorItemsFilterMob;
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
  // Stores action output result for [Custom Action - filterContactorItems] action in Button widget.
  List<PartCardDTOStruct>? contItemsOnFilterMob;
  // State field(s) for DropDown-MFD1 widget.
  double? dropDownMFD1Value;
  FormFieldController<double>? dropDownMFD1ValueController;
  // State field(s) for DropDown-MFD2 widget.
  double? dropDownMFD2Value;
  FormFieldController<double>? dropDownMFD2ValueController;
  // State field(s) for TextField-Cap-Volt widget.
  FocusNode? textFieldCapVoltFocusNode;
  TextEditingController? textFieldCapVoltTextController;
  String? Function(BuildContext, String?)?
      textFieldCapVoltTextControllerValidator;
  // State field(s) for DropDown-type widget.
  String? dropDownTypeValue;
  FormFieldController<String>? dropDownTypeValueController;
  // State field(s) for DropDown-shape widget.
  String? dropDownShapeValue;
  FormFieldController<String>? dropDownShapeValueController;
  // Stores action output result for [Custom Action - filterCapacitorItems] action in Button widget.
  List<PartCardDTOStruct>? capacItemsOnFilterMob;

  @override
  void initState(BuildContext context) {
    filterItemModel1 = createModel(context, () => FilterItemModel());
    filterItemModel2 = createModel(context, () => FilterItemModel());
    filterItemModel3 = createModel(context, () => FilterItemModel());
  }

  @override
  void dispose() {
    filterItemModel1.dispose();
    filterItemModel2.dispose();
    filterItemModel3.dispose();
    textFieldVoltFocusNode?.dispose();
    textFieldVoltTextController?.dispose();

    textFieldRvoltFocusNode?.dispose();
    textFieldRvoltTextController?.dispose();

    textFieldCapVoltFocusNode?.dispose();
    textFieldCapVoltTextController?.dispose();
  }
}
