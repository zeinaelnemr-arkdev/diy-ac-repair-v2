import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s08_company_investors/s08_company_investors_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/e_review_your_order/desktop/components/review_your_order_desktop/review_your_order_desktop_widget.dart';
import '/e_review_your_order/mobile/e_review_your_order_mobile/e_review_your_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'e_review_your_order_widget.dart' show EReviewYourOrderWidget;
import 'package:flutter/material.dart';

class EReviewYourOrderModel extends FlutterFlowModel<EReviewYourOrderWidget> {
  ///  Local state fields for this page.

  List<ItemsRecord> tools = [];
  void addToTools(ItemsRecord item) => tools.add(item);
  void removeFromTools(ItemsRecord item) => tools.remove(item);
  void removeAtIndexFromTools(int index) => tools.removeAt(index);
  void insertAtIndexInTools(int index, ItemsRecord item) =>
      tools.insert(index, item);
  void updateToolsAtIndex(int index, Function(ItemsRecord) updateFn) =>
      tools[index] = updateFn(tools[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in E-Review_Your_Order widget.
  List<ItemsRecord>? toolACT;
  // Stores action output result for [Firestore Query - Query a collection] action in E-Review_Your_Order widget.
  SettingsRecord? shipping;
  // Stores action output result for [Firestore Query - Query a collection] action in E-Review_Your_Order widget.
  SettingsRecord? tax;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for Review_Your_Order_Desktop component.
  late ReviewYourOrderDesktopModel reviewYourOrderDesktopModel;
  // Model for E_Review_your_order_mobile component.
  late EReviewYourOrderMobileModel eReviewYourOrderMobileModel;
  // Model for S08_CompanyInvestors component.
  late S08CompanyInvestorsModel s08CompanyInvestorsModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    reviewYourOrderDesktopModel =
        createModel(context, () => ReviewYourOrderDesktopModel());
    eReviewYourOrderMobileModel =
        createModel(context, () => EReviewYourOrderMobileModel());
    s08CompanyInvestorsModel =
        createModel(context, () => S08CompanyInvestorsModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    reviewYourOrderDesktopModel.dispose();
    eReviewYourOrderMobileModel.dispose();
    s08CompanyInvestorsModel.dispose();
    s12FooterModel.dispose();
  }
}
