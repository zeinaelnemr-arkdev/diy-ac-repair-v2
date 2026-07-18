import '/components/button40_widget.dart';
import '/components/order_item_row3_widget.dart';
import '/components/tracking_step_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_screen2_widget.dart' show NewScreen2Widget;
import 'package:flutter/material.dart';

class NewScreen2Model extends FlutterFlowModel<NewScreen2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button40Model buttonModel;
  // Model for TrackingStep.
  late TrackingStepModel trackingStepModel1;
  // Model for TrackingStep.
  late TrackingStepModel trackingStepModel2;
  // Model for TrackingStep.
  late TrackingStepModel trackingStepModel3;
  // Model for TrackingStep.
  late TrackingStepModel trackingStepModel4;
  // Model for OrderItemRow.
  late OrderItemRow3Model orderItemRowModel1;
  // Model for OrderItemRow.
  late OrderItemRow3Model orderItemRowModel2;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button40Model());
    trackingStepModel1 = createModel(context, () => TrackingStepModel());
    trackingStepModel2 = createModel(context, () => TrackingStepModel());
    trackingStepModel3 = createModel(context, () => TrackingStepModel());
    trackingStepModel4 = createModel(context, () => TrackingStepModel());
    orderItemRowModel1 = createModel(context, () => OrderItemRow3Model());
    orderItemRowModel2 = createModel(context, () => OrderItemRow3Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    trackingStepModel1.dispose();
    trackingStepModel2.dispose();
    trackingStepModel3.dispose();
    trackingStepModel4.dispose();
    orderItemRowModel1.dispose();
    orderItemRowModel2.dispose();
  }
}
