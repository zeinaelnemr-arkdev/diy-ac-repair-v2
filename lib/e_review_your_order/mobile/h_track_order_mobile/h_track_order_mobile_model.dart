import '/backend/backend.dart';
import '/components/button41_widget.dart';
import '/components/order_item_row4_widget.dart';
import '/components/tracking_step2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'h_track_order_mobile_widget.dart' show HTrackOrderMobileWidget;
import 'package:flutter/material.dart';

class HTrackOrderMobileModel extends FlutterFlowModel<HTrackOrderMobileWidget> {
  ///  Local state fields for this component.

  OrdersRecord? orderMCS;

  ///  State fields for stateful widgets in this component.

  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel1;
  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel2;
  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel3;
  // Model for TrackingStep.
  late TrackingStep2Model trackingStepModel4;
  // Model for OrderItemRow.
  late OrderItemRow4Model orderItemRowModel2;
  // Model for Button.
  late Button41Model buttonModel;

  @override
  void initState(BuildContext context) {
    trackingStepModel1 = createModel(context, () => TrackingStep2Model());
    trackingStepModel2 = createModel(context, () => TrackingStep2Model());
    trackingStepModel3 = createModel(context, () => TrackingStep2Model());
    trackingStepModel4 = createModel(context, () => TrackingStep2Model());
    orderItemRowModel2 = createModel(context, () => OrderItemRow4Model());
    buttonModel = createModel(context, () => Button41Model());
  }

  @override
  void dispose() {
    trackingStepModel1.dispose();
    trackingStepModel2.dispose();
    trackingStepModel3.dispose();
    trackingStepModel4.dispose();
    orderItemRowModel2.dispose();
    buttonModel.dispose();
  }
}
