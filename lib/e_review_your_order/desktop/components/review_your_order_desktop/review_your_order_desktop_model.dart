import '/backend/backend.dart';
import '/e_review_your_order/desktop/components/button5/button5_widget.dart';
import '/e_review_your_order/desktop/components/checkout_breadcrumb/checkout_breadcrumb_widget.dart';
import '/e_review_your_order/desktop/components/part_row_copy/part_row_copy_widget.dart';
import '/e_review_your_order/desktop/components/summary_line/summary_line_widget.dart';
import '/e_review_your_order/desktop/components/summary_line_total/summary_line_total_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_your_order_desktop_widget.dart'
    show ReviewYourOrderDesktopWidget;
import 'package:flutter/material.dart';

class ReviewYourOrderDesktopModel
    extends FlutterFlowModel<ReviewYourOrderDesktopWidget> {
  ///  Local state fields for this component.

  List<ItemsRecord> toolsList = [];
  void addToToolsList(ItemsRecord item) => toolsList.add(item);
  void removeFromToolsList(ItemsRecord item) => toolsList.remove(item);
  void removeAtIndexFromToolsList(int index) => toolsList.removeAt(index);
  void insertAtIndexInToolsList(int index, ItemsRecord item) =>
      toolsList.insert(index, item);
  void updateToolsListAtIndex(int index, Function(ItemsRecord) updateFn) =>
      toolsList[index] = updateFn(toolsList[index]);

  String? comment;

  ///  State fields for stateful widgets in this component.

  // Model for CheckoutBreadcrumb.
  late CheckoutBreadcrumbModel checkoutBreadcrumbModel;
  // Model for PartRowCopy component.
  late PartRowCopyModel partRowCopyModel;
  // State field(s) for Checkbox widget.
  Map<ItemsRecord, bool> checkboxValueMap1 = {};
  List<ItemsRecord> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for SummaryLine.
  late SummaryLineModel summaryLineModel1;
  // Model for SummaryLine.
  late SummaryLineModel summaryLineModel2;
  // Model for SummaryLine.
  late SummaryLineModel summaryLineModel3;
  // Model for SummaryLineTotal component.
  late SummaryLineTotalModel summaryLineTotalModel;
  // Model for Button.
  late Button5Model buttonModel;
  // State field(s) for TextField-Message widget.
  FocusNode? textFieldMessageFocusNode;
  TextEditingController? textFieldMessageTextController;
  String? Function(BuildContext, String?)?
      textFieldMessageTextControllerValidator;

  @override
  void initState(BuildContext context) {
    checkoutBreadcrumbModel =
        createModel(context, () => CheckoutBreadcrumbModel());
    partRowCopyModel = createModel(context, () => PartRowCopyModel());
    summaryLineModel1 = createModel(context, () => SummaryLineModel());
    summaryLineModel2 = createModel(context, () => SummaryLineModel());
    summaryLineModel3 = createModel(context, () => SummaryLineModel());
    summaryLineTotalModel = createModel(context, () => SummaryLineTotalModel());
    buttonModel = createModel(context, () => Button5Model());
  }

  @override
  void dispose() {
    checkoutBreadcrumbModel.dispose();
    partRowCopyModel.dispose();
    summaryLineModel1.dispose();
    summaryLineModel2.dispose();
    summaryLineModel3.dispose();
    summaryLineTotalModel.dispose();
    buttonModel.dispose();
    textFieldMessageFocusNode?.dispose();
    textFieldMessageTextController?.dispose();
  }
}
