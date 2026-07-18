import '/components/button11_widget.dart';
import '/components/nav_tile2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'l_user_profile_desktop_widget.dart' show LUserProfileDesktopWidget;
import 'package:flutter/material.dart';

class LUserProfileDesktopModel
    extends FlutterFlowModel<LUserProfileDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button11Model buttonModel1;
  // Model for Button.
  late Button11Model buttonModel2;
  // Model for NavTile.
  late NavTile2Model navTileModel1;
  // Model for NavTile.
  late NavTile2Model navTileModel2;
  // Model for NavTile.
  late NavTile2Model navTileModel3;
  // Model for NavTile.
  late NavTile2Model navTileModel4;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button11Model());
    buttonModel2 = createModel(context, () => Button11Model());
    navTileModel1 = createModel(context, () => NavTile2Model());
    navTileModel2 = createModel(context, () => NavTile2Model());
    navTileModel3 = createModel(context, () => NavTile2Model());
    navTileModel4 = createModel(context, () => NavTile2Model());
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
