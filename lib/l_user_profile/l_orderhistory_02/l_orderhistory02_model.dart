import '/components/order_row12_widget.dart';
import '/components/stat_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'l_orderhistory02_widget.dart' show LOrderhistory02Widget;
import 'package:flutter/material.dart';

class LOrderhistory02Model extends FlutterFlowModel<LOrderhistory02Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatCard.
  late StatCardModel statCardModel1;
  // Model for StatCard.
  late StatCardModel statCardModel2;
  // Model for StatCard.
  late StatCardModel statCardModel3;
  // Model for OrderRow.
  late OrderRow12Model orderRowModel1;
  // Model for OrderRow.
  late OrderRow12Model orderRowModel2;
  // Model for OrderRow.
  late OrderRow12Model orderRowModel3;
  // Model for OrderRow.
  late OrderRow12Model orderRowModel4;
  // Model for OrderRow.
  late OrderRow12Model orderRowModel5;
  // Model for OrderRow.
  late OrderRow12Model orderRowModel6;

  @override
  void initState(BuildContext context) {
    statCardModel1 = createModel(context, () => StatCardModel());
    statCardModel2 = createModel(context, () => StatCardModel());
    statCardModel3 = createModel(context, () => StatCardModel());
    orderRowModel1 = createModel(context, () => OrderRow12Model());
    orderRowModel2 = createModel(context, () => OrderRow12Model());
    orderRowModel3 = createModel(context, () => OrderRow12Model());
    orderRowModel4 = createModel(context, () => OrderRow12Model());
    orderRowModel5 = createModel(context, () => OrderRow12Model());
    orderRowModel6 = createModel(context, () => OrderRow12Model());
  }

  @override
  void dispose() {
    statCardModel1.dispose();
    statCardModel2.dispose();
    statCardModel3.dispose();
    orderRowModel1.dispose();
    orderRowModel2.dispose();
    orderRowModel3.dispose();
    orderRowModel4.dispose();
    orderRowModel5.dispose();
    orderRowModel6.dispose();
  }
}
