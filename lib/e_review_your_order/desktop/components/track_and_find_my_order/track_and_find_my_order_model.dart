import '/backend/backend.dart';
import '/components/button38_widget.dart';
import '/components/order_card_widget.dart';
import '/components/text_field18_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_and_find_my_order_widget.dart' show TrackAndFindMyOrderWidget;
import 'package:flutter/material.dart';

class TrackAndFindMyOrderModel
    extends FlutterFlowModel<TrackAndFindMyOrderWidget> {
  ///  Local state fields for this component.

  bool zeroResult = false;

  List<OrdersRecord> orders = [];
  void addToOrders(OrdersRecord item) => orders.add(item);
  void removeFromOrders(OrdersRecord item) => orders.remove(item);
  void removeAtIndexFromOrders(int index) => orders.removeAt(index);
  void insertAtIndexInOrders(int index, OrdersRecord item) =>
      orders.insert(index, item);
  void updateOrdersAtIndex(int index, Function(OrdersRecord) updateFn) =>
      orders[index] = updateFn(orders[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for TextField.
  late TextField18Model textFieldModel1;
  // Model for TextField.
  late TextField18Model textFieldModel2;
  // Model for TextField.
  late TextField18Model textFieldModel3;
  // Model for Button.
  late Button38Model buttonModel1;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formval;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<OrdersRecord>? orderList;
  // Models for OrderCard.
  late FlutterFlowDynamicModels<OrderCardModel> orderCardModels;
  // Model for Button.
  late Button38Model buttonModel2;
  // Model for Button.
  late Button38Model buttonModel3;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField18Model());
    textFieldModel2 = createModel(context, () => TextField18Model());
    textFieldModel3 = createModel(context, () => TextField18Model());
    buttonModel1 = createModel(context, () => Button38Model());
    orderCardModels = FlutterFlowDynamicModels(() => OrderCardModel());
    buttonModel2 = createModel(context, () => Button38Model());
    buttonModel3 = createModel(context, () => Button38Model());
    textFieldModel1.inputTextControllerValidator = _formTextFieldValidator1;
    textFieldModel2.inputTextControllerValidator = _formTextFieldValidator2;
    textFieldModel3.inputTextControllerValidator = _formTextFieldValidator3;
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    buttonModel1.dispose();
    orderCardModels.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone is required';
    }

    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'PIN is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }
}
