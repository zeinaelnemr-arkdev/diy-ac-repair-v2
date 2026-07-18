import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/components/nav_item/nav_item_widget.dart';
import 'l_user_profilemobile_widget.dart' show LUserProfilemobileWidget;
import 'package:flutter/material.dart';

class LUserProfilemobileModel
    extends FlutterFlowModel<LUserProfilemobileWidget> {
  ///  Local state fields for this component.

  OrdersRecord? activeOrder;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in L_user_profilemobile widget.
  OrdersRecord? activeOrders;
  // Model for NavItem.
  late NavItemModel navItemModel1;
  // Model for NavItem.
  late NavItemModel navItemModel2;
  // Model for NavItem.
  late NavItemModel navItemModel3;
  // Model for NavItem.
  late NavItemModel navItemModel4;

  @override
  void initState(BuildContext context) {
    navItemModel1 = createModel(context, () => NavItemModel());
    navItemModel2 = createModel(context, () => NavItemModel());
    navItemModel3 = createModel(context, () => NavItemModel());
    navItemModel4 = createModel(context, () => NavItemModel());
  }

  @override
  void dispose() {
    navItemModel1.dispose();
    navItemModel2.dispose();
    navItemModel3.dispose();
    navItemModel4.dispose();
  }
}
