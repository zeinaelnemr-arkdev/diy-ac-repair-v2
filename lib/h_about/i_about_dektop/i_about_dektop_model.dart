import '/components/limit_badge_widget.dart';
import '/components/objective_card_widget.dart';
import '/components/role_item_widget.dart';
import '/components/scope_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'i_about_dektop_widget.dart' show IAboutDektopWidget;
import 'package:flutter/material.dart';

class IAboutDektopModel extends FlutterFlowModel<IAboutDektopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ObjectiveCard.
  late ObjectiveCardModel objectiveCardModel1;
  // Model for ObjectiveCard.
  late ObjectiveCardModel objectiveCardModel2;
  // Model for ObjectiveCard.
  late ObjectiveCardModel objectiveCardModel3;
  // Model for ObjectiveCard.
  late ObjectiveCardModel objectiveCardModel4;
  // Model for ScopeItem.
  late ScopeItemModel scopeItemModel1;
  // Model for ScopeItem.
  late ScopeItemModel scopeItemModel2;
  // Model for ScopeItem.
  late ScopeItemModel scopeItemModel3;
  // Model for RoleItem.
  late RoleItemModel roleItemModel1;
  // Model for RoleItem.
  late RoleItemModel roleItemModel2;
  // Model for RoleItem.
  late RoleItemModel roleItemModel3;
  // Model for RoleItem.
  late RoleItemModel roleItemModel4;
  // Model for RoleItem.
  late RoleItemModel roleItemModel5;
  // Model for RoleItem.
  late RoleItemModel roleItemModel6;
  // Model for LimitBadge.
  late LimitBadgeModel limitBadgeModel1;
  // Model for LimitBadge.
  late LimitBadgeModel limitBadgeModel2;
  // Model for LimitBadge.
  late LimitBadgeModel limitBadgeModel3;
  // Model for LimitBadge.
  late LimitBadgeModel limitBadgeModel4;

  @override
  void initState(BuildContext context) {
    objectiveCardModel1 = createModel(context, () => ObjectiveCardModel());
    objectiveCardModel2 = createModel(context, () => ObjectiveCardModel());
    objectiveCardModel3 = createModel(context, () => ObjectiveCardModel());
    objectiveCardModel4 = createModel(context, () => ObjectiveCardModel());
    scopeItemModel1 = createModel(context, () => ScopeItemModel());
    scopeItemModel2 = createModel(context, () => ScopeItemModel());
    scopeItemModel3 = createModel(context, () => ScopeItemModel());
    roleItemModel1 = createModel(context, () => RoleItemModel());
    roleItemModel2 = createModel(context, () => RoleItemModel());
    roleItemModel3 = createModel(context, () => RoleItemModel());
    roleItemModel4 = createModel(context, () => RoleItemModel());
    roleItemModel5 = createModel(context, () => RoleItemModel());
    roleItemModel6 = createModel(context, () => RoleItemModel());
    limitBadgeModel1 = createModel(context, () => LimitBadgeModel());
    limitBadgeModel2 = createModel(context, () => LimitBadgeModel());
    limitBadgeModel3 = createModel(context, () => LimitBadgeModel());
    limitBadgeModel4 = createModel(context, () => LimitBadgeModel());
  }

  @override
  void dispose() {
    objectiveCardModel1.dispose();
    objectiveCardModel2.dispose();
    objectiveCardModel3.dispose();
    objectiveCardModel4.dispose();
    scopeItemModel1.dispose();
    scopeItemModel2.dispose();
    scopeItemModel3.dispose();
    roleItemModel1.dispose();
    roleItemModel2.dispose();
    roleItemModel3.dispose();
    roleItemModel4.dispose();
    roleItemModel5.dispose();
    roleItemModel6.dispose();
    limitBadgeModel1.dispose();
    limitBadgeModel2.dispose();
    limitBadgeModel3.dispose();
    limitBadgeModel4.dispose();
  }
}
