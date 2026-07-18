import '/components/order_item_widget.dart';
import '/components/stat_card2_widget.dart';
import '/components/text_field19_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'l_order_histor_mobile_widget.dart' show LOrderHistorMobileWidget;
import 'package:flutter/material.dart';

class LOrderHistorMobileModel
    extends FlutterFlowModel<LOrderHistorMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatCard.
  late StatCard2Model statCardModel1;
  // Model for StatCard.
  late StatCard2Model statCardModel2;
  // Model for TextField.
  late TextField19Model textFieldModel;
  // Model for OrderItem.
  late OrderItemModel orderItemModel1;
  // Model for OrderItem.
  late OrderItemModel orderItemModel2;
  // Model for OrderItem.
  late OrderItemModel orderItemModel3;
  // Model for OrderItem.
  late OrderItemModel orderItemModel4;
  // Model for OrderItem.
  late OrderItemModel orderItemModel5;

  @override
  void initState(BuildContext context) {
    statCardModel1 = createModel(context, () => StatCard2Model());
    statCardModel2 = createModel(context, () => StatCard2Model());
    textFieldModel = createModel(context, () => TextField19Model());
    orderItemModel1 = createModel(context, () => OrderItemModel());
    orderItemModel2 = createModel(context, () => OrderItemModel());
    orderItemModel3 = createModel(context, () => OrderItemModel());
    orderItemModel4 = createModel(context, () => OrderItemModel());
    orderItemModel5 = createModel(context, () => OrderItemModel());
  }

  @override
  void dispose() {
    statCardModel1.dispose();
    statCardModel2.dispose();
    textFieldModel.dispose();
    orderItemModel1.dispose();
    orderItemModel2.dispose();
    orderItemModel3.dispose();
    orderItemModel4.dispose();
    orderItemModel5.dispose();
  }
}
