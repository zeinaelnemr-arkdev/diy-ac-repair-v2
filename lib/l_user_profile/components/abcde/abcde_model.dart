import '/backend/backend.dart';
import '/components/button13_widget.dart';
import '/components/nav_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'abcde_widget.dart' show AbcdeWidget;
import 'package:flutter/material.dart';

class AbcdeModel extends FlutterFlowModel<AbcdeWidget> {
  ///  Local state fields for this component.

  OrdersRecord? activeOrder;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in abcde widget.
  OrdersRecord? activeOrders;
  // Model for Button.
  late Button13Model buttonModel1;
  // Model for Button.
  late Button13Model buttonModel2;
  // Model for NavTile.
  late NavTileModel navTileModel1;
  // Model for NavTile.
  late NavTileModel navTileModel2;
  // Model for NavTile.
  late NavTileModel navTileModel3;
  // Model for NavTile.
  late NavTileModel navTileModel4;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button13Model());
    buttonModel2 = createModel(context, () => Button13Model());
    navTileModel1 = createModel(context, () => NavTileModel());
    navTileModel2 = createModel(context, () => NavTileModel());
    navTileModel3 = createModel(context, () => NavTileModel());
    navTileModel4 = createModel(context, () => NavTileModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    navTileModel1.dispose();
    navTileModel2.dispose();
    navTileModel3.dispose();
    navTileModel4.dispose();
  }
}
