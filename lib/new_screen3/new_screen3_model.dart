import '/components/button39_widget.dart';
import '/components/order_card2_widget.dart';
import '/components/text_field21_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_screen3_widget.dart' show NewScreen3Widget;
import 'package:flutter/material.dart';

class NewScreen3Model extends FlutterFlowModel<NewScreen3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextField21Model textFieldModel1;
  // Model for TextField.
  late TextField21Model textFieldModel2;
  // Model for TextField.
  late TextField21Model textFieldModel3;
  // Model for Button.
  late Button39Model buttonModel1;
  // Model for OrderCard.
  late OrderCard2Model orderCardModel1;
  // Model for OrderCard.
  late OrderCard2Model orderCardModel2;
  // Model for Button.
  late Button39Model buttonModel2;
  // Model for Button.
  late Button39Model buttonModel3;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextField21Model());
    textFieldModel2 = createModel(context, () => TextField21Model());
    textFieldModel3 = createModel(context, () => TextField21Model());
    buttonModel1 = createModel(context, () => Button39Model());
    orderCardModel1 = createModel(context, () => OrderCard2Model());
    orderCardModel2 = createModel(context, () => OrderCard2Model());
    buttonModel2 = createModel(context, () => Button39Model());
    buttonModel3 = createModel(context, () => Button39Model());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    buttonModel1.dispose();
    orderCardModel1.dispose();
    orderCardModel2.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
