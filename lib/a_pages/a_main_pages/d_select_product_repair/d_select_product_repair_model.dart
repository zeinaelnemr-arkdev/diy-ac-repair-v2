import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/d_select_product_repair/desktop/components/b_select_product_main/b_select_product_main_widget.dart';
import '/d_select_product_repair/desktop/components/components/a_header_section/a_header_section_widget.dart';
import '/d_select_product_repair/desktop/components/components/s18_filter_repair_parts_desktop/s18_filter_repair_parts_desktop_widget.dart';
import '/d_select_product_repair/desktop/user_input_a_c_details/user_input_a_c_details_widget.dart';
import '/d_select_product_repair/mobile/components/serlect_product_mobile/serlect_product_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'd_select_product_repair_widget.dart' show DSelectProductRepairWidget;
import 'package:flutter/material.dart';

class DSelectProductRepairModel
    extends FlutterFlowModel<DSelectProductRepairWidget> {
  ///  Local state fields for this page.

  Parts? selectedPart;

  List<PartCardDTOStruct> partList = [];
  void addToPartList(PartCardDTOStruct item) => partList.add(item);
  void removeFromPartList(PartCardDTOStruct item) => partList.remove(item);
  void removeAtIndexFromPartList(int index) => partList.removeAt(index);
  void insertAtIndexInPartList(int index, PartCardDTOStruct item) =>
      partList.insert(index, item);
  void updatePartListAtIndex(int index, Function(PartCardDTOStruct) updateFn) =>
      partList[index] = updateFn(partList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - filterMotorItems] action in D-Select_Product_Repair widget.
  List<PartCardDTOStruct>? motorItemsOnPageLoad;
  // Stores action output result for [Custom Action - filterContactorItems] action in D-Select_Product_Repair widget.
  List<PartCardDTOStruct>? contOnPageLoad;
  // Stores action output result for [Custom Action - filterCapacitorItems] action in D-Select_Product_Repair widget.
  List<PartCardDTOStruct>? capacOnPageLoad;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for Serlect_Product_Mobile component.
  late SerlectProductMobileModel serlectProductMobileModel;
  // Model for A-Header_Section component.
  late AHeaderSectionModel aHeaderSectionModel;
  // Model for S18_Filter_repair_parts_desktop component.
  late S18FilterRepairPartsDesktopModel s18FilterRepairPartsDesktopModel;
  // Stores action output result for [Custom Action - filterMotorItems] action in S18_Filter_repair_parts_desktop widget.
  List<PartCardDTOStruct>? motorItemsOnCallback;
  // Stores action output result for [Custom Action - filterContactorItems] action in S18_Filter_repair_parts_desktop widget.
  List<PartCardDTOStruct>? contOnCallback;
  // Stores action output result for [Custom Action - filterCapacitorItems] action in S18_Filter_repair_parts_desktop widget.
  List<PartCardDTOStruct>? capacOnCallback;
  // Model for User_Input_A_C_details component.
  late UserInputACDetailsModel userInputACDetailsModel;
  // Model for B-Select_Product_Main component.
  late BSelectProductMainModel bSelectProductMainModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    serlectProductMobileModel =
        createModel(context, () => SerlectProductMobileModel());
    aHeaderSectionModel = createModel(context, () => AHeaderSectionModel());
    s18FilterRepairPartsDesktopModel =
        createModel(context, () => S18FilterRepairPartsDesktopModel());
    userInputACDetailsModel =
        createModel(context, () => UserInputACDetailsModel());
    bSelectProductMainModel =
        createModel(context, () => BSelectProductMainModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    serlectProductMobileModel.dispose();
    aHeaderSectionModel.dispose();
    s18FilterRepairPartsDesktopModel.dispose();
    userInputACDetailsModel.dispose();
    bSelectProductMainModel.dispose();
    s12FooterModel.dispose();
  }
}
