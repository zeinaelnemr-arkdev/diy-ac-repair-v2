import '/components/button41_widget.dart';
import '/components/order_item_row4_widget.dart';
import '/components/tracking_step2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_screen4_widget.dart' show NewScreen4Widget;
import 'package:flutter/material.dart';

class NewScreen4Model extends FlutterFlowModel<NewScreen4Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button41Model buttonModel1;
  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel1;
  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel2;
  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel3;
  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel4;
  // Model for OrderItemRow.
  late OrderItemRow4Model orderItemRowModel1;
  // Model for OrderItemRow.
  late OrderItemRow4Model orderItemRowModel2;
  // Model for Button.
  late Button41Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button41Model());
    trackingStepModel1 = createModel(context, () => TrackingStep2Model());
    trackingStepModel2 = createModel(context, () => TrackingStep2Model());
    trackingStepModel3 = createModel(context, () => TrackingStep2Model());
    trackingStepModel4 = createModel(context, () => TrackingStep2Model());
    orderItemRowModel1 = createModel(context, () => OrderItemRow4Model());
    orderItemRowModel2 = createModel(context, () => OrderItemRow4Model());
    buttonModel2 = createModel(context, () => Button41Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    trackingStepModel1.dispose();
    trackingStepModel2.dispose();
    trackingStepModel3.dispose();
    trackingStepModel4.dispose();
    orderItemRowModel1.dispose();
    orderItemRowModel2.dispose();
    buttonModel2.dispose();
  }
}
