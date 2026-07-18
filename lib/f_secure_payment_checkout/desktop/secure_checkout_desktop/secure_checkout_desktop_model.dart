import '/f_secure_payment_checkout/desktop/payment_badge2/payment_badge2_widget.dart';
import '/f_secure_payment_checkout/desktop/text_field6/text_field6_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secure_checkout_desktop_widget.dart' show SecureCheckoutDesktopWidget;
import 'package:flutter/material.dart';

class SecureCheckoutDesktopModel
    extends FlutterFlowModel<SecureCheckoutDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField6Model textFieldModel1;
  // Model for TextField.
  late TextField6Model textFieldModel2;
  // Model for TextField.
  late TextField6Model textFieldModel3;
  // Model for TextField.
  late TextField6Model textFieldModel4;
  // Model for PaymentBadge.
  late PaymentBadge2Model paymentBadgeModel1;
  // Model for PaymentBadge.
  late PaymentBadge2Model paymentBadgeModel2;
  // Model for PaymentBadge.
  late PaymentBadge2Model paymentBadgeModel3;
  // Model for PaymentBadge.
  late PaymentBadge2Model paymentBadgeModel4;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField6Model());
    textFieldModel2 = createModel(context, () => TextField6Model());
    textFieldModel3 = createModel(context, () => TextField6Model());
    textFieldModel4 = createModel(context, () => TextField6Model());
    paymentBadgeModel1 = createModel(context, () => PaymentBadge2Model());
    paymentBadgeModel2 = createModel(context, () => PaymentBadge2Model());
    paymentBadgeModel3 = createModel(context, () => PaymentBadge2Model());
    paymentBadgeModel4 = createModel(context, () => PaymentBadge2Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    paymentBadgeModel1.dispose();
    paymentBadgeModel2.dispose();
    paymentBadgeModel3.dispose();
    paymentBadgeModel4.dispose();
  }
}
