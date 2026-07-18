import '/f_secure_payment_checkout/mobile/components/button7/button7_widget.dart';
import '/f_secure_payment_checkout/mobile/components/form_label/form_label_widget.dart';
import '/f_secure_payment_checkout/mobile/components/payment_badge/payment_badge_widget.dart';
import '/f_secure_payment_checkout/mobile/components/text_field5/text_field5_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_secure_checkout_mobile_widget.dart' show ASecureCheckoutMobileWidget;
import 'package:flutter/material.dart';

class ASecureCheckoutMobileModel
    extends FlutterFlowModel<ASecureCheckoutMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FormLabel.
  late FormLabelModel formLabelModel1;
  // Model for TextField.
  late TextField5Model textFieldModel1;
  // Model for FormLabel.
  late FormLabelModel formLabelModel2;
  // Model for TextField.
  late TextField5Model textFieldModel2;
  // Model for FormLabel.
  late FormLabelModel formLabelModel3;
  // Model for TextField.
  late TextField5Model textFieldModel3;
  // Model for FormLabel.
  late FormLabelModel formLabelModel4;
  // Model for TextField.
  late TextField5Model textFieldModel4;
  // Model for Button.
  late Button7Model buttonModel;
  // Model for PaymentBadge.
  late PaymentBadgeModel paymentBadgeModel1;
  // Model for PaymentBadge.
  late PaymentBadgeModel paymentBadgeModel2;
  // Model for PaymentBadge.
  late PaymentBadgeModel paymentBadgeModel3;
  // Model for PaymentBadge.
  late PaymentBadgeModel paymentBadgeModel4;

  @override
  void initState(BuildContext context) {
    formLabelModel1 = createModel(context, () => FormLabelModel());
    textFieldModel1 = createModel(context, () => TextField5Model());
    formLabelModel2 = createModel(context, () => FormLabelModel());
    textFieldModel2 = createModel(context, () => TextField5Model());
    formLabelModel3 = createModel(context, () => FormLabelModel());
    textFieldModel3 = createModel(context, () => TextField5Model());
    formLabelModel4 = createModel(context, () => FormLabelModel());
    textFieldModel4 = createModel(context, () => TextField5Model());
    buttonModel = createModel(context, () => Button7Model());
    paymentBadgeModel1 = createModel(context, () => PaymentBadgeModel());
    paymentBadgeModel2 = createModel(context, () => PaymentBadgeModel());
    paymentBadgeModel3 = createModel(context, () => PaymentBadgeModel());
    paymentBadgeModel4 = createModel(context, () => PaymentBadgeModel());
  }

  @override
  void dispose() {
    formLabelModel1.dispose();
    textFieldModel1.dispose();
    formLabelModel2.dispose();
    textFieldModel2.dispose();
    formLabelModel3.dispose();
    textFieldModel3.dispose();
    formLabelModel4.dispose();
    textFieldModel4.dispose();
    buttonModel.dispose();
    paymentBadgeModel1.dispose();
    paymentBadgeModel2.dispose();
    paymentBadgeModel3.dispose();
    paymentBadgeModel4.dispose();
  }
}
