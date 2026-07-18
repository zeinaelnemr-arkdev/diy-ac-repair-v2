import '/backend/backend.dart';
import '/e_review_your_order/mobile/button6/button6_widget.dart';
import '/e_review_your_order/mobile/summary_row/summary_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'e_review_your_order_mobile_widget.dart'
    show EReviewYourOrderMobileWidget;
import 'package:flutter/material.dart';

class EReviewYourOrderMobileModel
    extends FlutterFlowModel<EReviewYourOrderMobileWidget> {
  ///  Local state fields for this component.

  List<ItemsRecord> toolsCS = [];
  void addToToolsCS(ItemsRecord item) => toolsCS.add(item);
  void removeFromToolsCS(ItemsRecord item) => toolsCS.remove(item);
  void removeAtIndexFromToolsCS(int index) => toolsCS.removeAt(index);
  void insertAtIndexInToolsCS(int index, ItemsRecord item) =>
      toolsCS.insert(index, item);
  void updateToolsCSAtIndex(int index, Function(ItemsRecord) updateFn) =>
      toolsCS[index] = updateFn(toolsCS[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<ItemsRecord, bool> checkboxValueMap = {};
  List<ItemsRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // State field(s) for TextField-Message widget.
  FocusNode? textFieldMessageFocusNode;
  TextEditingController? textFieldMessageTextController;
  String? Function(BuildContext, String?)?
      textFieldMessageTextControllerValidator;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel3;
  // Model for Button.
  late Button6Model buttonModel;

  @override
  void initState(BuildContext context) {
    summaryRowModel1 = createModel(context, () => SummaryRowModel());
    summaryRowModel2 = createModel(context, () => SummaryRowModel());
    summaryRowModel3 = createModel(context, () => SummaryRowModel());
    buttonModel = createModel(context, () => Button6Model());
  }

  @override
  void dispose() {
    textFieldMessageFocusNode?.dispose();
    textFieldMessageTextController?.dispose();

    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
    buttonModel.dispose();
  }
}
