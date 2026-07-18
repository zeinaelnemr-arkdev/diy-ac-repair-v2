import '/backend/backend.dart';
import '/components/form_label2_widget.dart';
import '/components/payment_badge3_widget.dart';
import '/components/text_field7_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_checkout_details/components/button8/button8_widget.dart';
import 'details_checkout_mobile_and_desktop_widget.dart'
    show DetailsCheckoutMobileAndDesktopWidget;
import 'package:flutter/material.dart';

class DetailsCheckoutMobileAndDesktopModel
    extends FlutterFlowModel<DetailsCheckoutMobileAndDesktopWidget> {
  ///  Local state fields for this component.

  String? paymentidPS;

  DocumentReference? orderPS;

  List<OrderLinesStruct> lines = [];
  void addToLines(OrderLinesStruct item) => lines.add(item);
  void removeFromLines(OrderLinesStruct item) => lines.remove(item);
  void removeAtIndexFromLines(int index) => lines.removeAt(index);
  void insertAtIndexInLines(int index, OrderLinesStruct item) =>
      lines.insert(index, item);
  void updateLinesAtIndex(int index, Function(OrderLinesStruct) updateFn) =>
      lines[index] = updateFn(lines[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for FormLabel.
  late FormLabel2Model formLabelModel1;
  // Model for TextFieldName.
  late TextField7Model textFieldNameModel;
  // Model for FormLabel.
  late FormLabel2Model formLabelModel2;
  // Model for TextFieldEmail.
  late TextField7Model textFieldEmailModel;
  // Model for FormLabel.
  late FormLabel2Model formLabelModel3;
  // Model for TextFieldAddress.
  late TextField7Model textFieldAddressModel;
  // Model for FormLabel.
  late FormLabel2Model formLabelModel4;
  // Model for TextFieldCity.
  late TextField7Model textFieldCityModel;
  // Model for FormLabel.
  late FormLabel2Model formLabelModel5;
  // Model for TextFieldState.
  late TextField7Model textFieldStateModel;
  // Model for FormLabel.
  late FormLabel2Model formLabelModel6;
  // Model for TextFieldCard.
  late TextField7Model textFieldCardModel;
  // Model for FormLabel.
  late FormLabel2Model formLabelModel7;
  // Model for TextFieldPhone.
  late TextField7Model textFieldPhoneModel;
  // Model for Button.
  late Button8Model buttonModel;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? form01;
  // Stores action output result for [Custom Action - cartItemsToOrderLinesA] action in Button widget.
  List<OrderLinesStruct>? linsACTC;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? order;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? form02;
  // Stores action output result for [Custom Action - cartItemsToOrderLinesA] action in Button widget.
  List<OrderLinesStruct>? linsACTU;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;
  // Model for PaymentBadge.
  late PaymentBadge3Model paymentBadgeModel1;
  // Model for PaymentBadge.
  late PaymentBadge3Model paymentBadgeModel2;
  // Model for PaymentBadge.
  late PaymentBadge3Model paymentBadgeModel3;
  // Model for PaymentBadge.
  late PaymentBadge3Model paymentBadgeModel4;

  @override
  void initState(BuildContext context) {
    formLabelModel1 = createModel(context, () => FormLabel2Model());
    textFieldNameModel = createModel(context, () => TextField7Model());
    formLabelModel2 = createModel(context, () => FormLabel2Model());
    textFieldEmailModel = createModel(context, () => TextField7Model());
    formLabelModel3 = createModel(context, () => FormLabel2Model());
    textFieldAddressModel = createModel(context, () => TextField7Model());
    formLabelModel4 = createModel(context, () => FormLabel2Model());
    textFieldCityModel = createModel(context, () => TextField7Model());
    formLabelModel5 = createModel(context, () => FormLabel2Model());
    textFieldStateModel = createModel(context, () => TextField7Model());
    formLabelModel6 = createModel(context, () => FormLabel2Model());
    textFieldCardModel = createModel(context, () => TextField7Model());
    formLabelModel7 = createModel(context, () => FormLabel2Model());
    textFieldPhoneModel = createModel(context, () => TextField7Model());
    buttonModel = createModel(context, () => Button8Model());
    paymentBadgeModel1 = createModel(context, () => PaymentBadge3Model());
    paymentBadgeModel2 = createModel(context, () => PaymentBadge3Model());
    paymentBadgeModel3 = createModel(context, () => PaymentBadge3Model());
    paymentBadgeModel4 = createModel(context, () => PaymentBadge3Model());
    textFieldNameModel.inputTextControllerValidator = _formTextFieldValidator1;
    textFieldEmailModel.inputTextControllerValidator = _formTextFieldValidator2;
    textFieldAddressModel.inputTextControllerValidator =
        _formTextFieldValidator3;
    textFieldCityModel.inputTextControllerValidator = _formTextFieldValidator4;
    textFieldStateModel.inputTextControllerValidator = _formTextFieldValidator5;
    textFieldCardModel.inputTextControllerValidator = _formTextFieldValidator6;
    textFieldPhoneModel.inputTextControllerValidator = _formTextFieldValidator7;
  }

  @override
  void dispose() {
    formLabelModel1.dispose();
    textFieldNameModel.dispose();
    formLabelModel2.dispose();
    textFieldEmailModel.dispose();
    formLabelModel3.dispose();
    textFieldAddressModel.dispose();
    formLabelModel4.dispose();
    textFieldCityModel.dispose();
    formLabelModel5.dispose();
    textFieldStateModel.dispose();
    formLabelModel6.dispose();
    textFieldCardModel.dispose();
    formLabelModel7.dispose();
    textFieldPhoneModel.dispose();
    buttonModel.dispose();
    paymentBadgeModel1.dispose();
    paymentBadgeModel2.dispose();
    paymentBadgeModel3.dispose();
    paymentBadgeModel4.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Address is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  String? _formTextFieldValidator4(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'City is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  String? _formTextFieldValidator5(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'State is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  String? _formTextFieldValidator6(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'value is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'Must be exactly 4 digits.';
    }
    return null;
  }

  String? _formTextFieldValidator7(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone is required';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }
}
