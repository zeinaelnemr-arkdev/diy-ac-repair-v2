import '/backend/backend.dart';
import '/components/button40_widget.dart';
import '/components/order_item_row3_widget.dart';
import '/components/tracking_step_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'h_order_tracking_desktop_widget.dart' show HOrderTrackingDesktopWidget;
import 'package:flutter/material.dart';

class HOrderTrackingDesktopModel
    extends FlutterFlowModel<HOrderTrackingDesktopWidget> {
  ///  Local state fields for this component.

  OrdersRecord? orderDCS;

  ///  State fields for stateful widgets in this component.

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
  late OrderItemRow3Model orderItemRowModel2;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button40Model());
    trackingStepModel1 = createModel(context, () => TrackingStepModel());
    trackingStepModel2 = createModel(context, () => TrackingStepModel());
    trackingStepModel3 = createModel(context, () => TrackingStepModel());
    trackingStepModel4 = createModel(context, () => TrackingStepModel());
    orderItemRowModel2 = createModel(context, () => OrderItemRow3Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    trackingStepModel1.dispose();
    trackingStepModel2.dispose();
    trackingStepModel3.dispose();
    trackingStepModel4.dispose();
    orderItemRowModel2.dispose();
  }
}
