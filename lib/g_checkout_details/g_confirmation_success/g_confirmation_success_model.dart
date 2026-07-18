import '/backend/backend.dart';
import '/components/button35_widget.dart';
import '/components/order_summary_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'g_confirmation_success_widget.dart' show GConfirmationSuccessWidget;
import 'package:flutter/material.dart';

class GConfirmationSuccessModel
    extends FlutterFlowModel<GConfirmationSuccessWidget> {
  ///  Local state fields for this component.

  OrdersRecord? order;

  ///  State fields for stateful widgets in this component.

  // Model for OrderSummaryItem.
  late OrderSummaryItemModel orderSummaryItemModel1;
  // Model for OrderSummaryItem.
  late OrderSummaryItemModel orderSummaryItemModel2;
  // Model for OrderSummaryItem.
  late OrderSummaryItemModel orderSummaryItemModel3;
  // Model for Button.
  late Button35Model buttonModel1;
  // Model for Button.
  late Button35Model buttonModel2;

  @override
  void initState(BuildContext context) {
    orderSummaryItemModel1 =
        createModel(context, () => OrderSummaryItemModel());
    orderSummaryItemModel2 =
        createModel(context, () => OrderSummaryItemModel());
    orderSummaryItemModel3 =
        createModel(context, () => OrderSummaryItemModel());
    buttonModel1 = createModel(context, () => Button35Model());
    buttonModel2 = createModel(context, () => Button35Model());
  }

  @override
  void dispose() {
    orderSummaryItemModel1.dispose();
    orderSummaryItemModel2.dispose();
    orderSummaryItemModel3.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
