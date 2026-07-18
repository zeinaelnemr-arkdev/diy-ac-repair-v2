import '/components/button2_widget.dart';
import '/components/dimension_input_widget.dart';
import '/components/spec_dropdown_widget.dart';
import '/d_select_product_repair/desktop/components/components/filter_category_item/filter_category_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's18_copy_widget.dart' show S18CopyWidget;
import 'package:flutter/material.dart';

class S18CopyModel extends FlutterFlowModel<S18CopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FilterCategoryItem.
  late FilterCategoryItemModel filterCategoryItemModel1;
  // Model for FilterCategoryItem.
  late FilterCategoryItemModel filterCategoryItemModel2;
  // Model for FilterCategoryItem.
  late FilterCategoryItemModel filterCategoryItemModel3;
  // Model for SpecDropdown.
  late SpecDropdownModel specDropdownModel1;
  // Model for SpecDropdown.
  late SpecDropdownModel specDropdownModel2;
  // Model for SpecDropdown.
  late SpecDropdownModel specDropdownModel3;
  // Model for SpecDropdown.
  late SpecDropdownModel specDropdownModel4;
  // Model for DimensionInput.
  late DimensionInputModel dimensionInputModel1;
  // Model for DimensionInput.
  late DimensionInputModel dimensionInputModel2;
  // Model for DimensionInput.
  late DimensionInputModel dimensionInputModel3;
  // Model for SpecDropdown.
  late SpecDropdownModel specDropdownModel5;
  // Model for Button.
  late Button2Model buttonModel;

  @override
  void initState(BuildContext context) {
    filterCategoryItemModel1 =
        createModel(context, () => FilterCategoryItemModel());
    filterCategoryItemModel2 =
        createModel(context, () => FilterCategoryItemModel());
    filterCategoryItemModel3 =
        createModel(context, () => FilterCategoryItemModel());
    specDropdownModel1 = createModel(context, () => SpecDropdownModel());
    specDropdownModel2 = createModel(context, () => SpecDropdownModel());
    specDropdownModel3 = createModel(context, () => SpecDropdownModel());
    specDropdownModel4 = createModel(context, () => SpecDropdownModel());
    dimensionInputModel1 = createModel(context, () => DimensionInputModel());
    dimensionInputModel2 = createModel(context, () => DimensionInputModel());
    dimensionInputModel3 = createModel(context, () => DimensionInputModel());
    specDropdownModel5 = createModel(context, () => SpecDropdownModel());
    buttonModel = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    filterCategoryItemModel1.dispose();
    filterCategoryItemModel2.dispose();
    filterCategoryItemModel3.dispose();
    specDropdownModel1.dispose();
    specDropdownModel2.dispose();
    specDropdownModel3.dispose();
    specDropdownModel4.dispose();
    dimensionInputModel1.dispose();
    dimensionInputModel2.dispose();
    dimensionInputModel3.dispose();
    specDropdownModel5.dispose();
    buttonModel.dispose();
  }
}
