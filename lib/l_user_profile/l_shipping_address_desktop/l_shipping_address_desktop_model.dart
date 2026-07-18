import '/components/address_card3_widget.dart';
import '/components/button36_widget.dart';
import '/components/text_field11_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'l_shipping_address_desktop_widget.dart'
    show LShippingAddressDesktopWidget;
import 'package:flutter/material.dart';

class LShippingAddressDesktopModel
    extends FlutterFlowModel<LShippingAddressDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button36Model buttonModel1;
  // Model for AddressCard.
  late AddressCard3Model addressCardModel1;
  // Model for AddressCard.
  late AddressCard3Model addressCardModel2;
  // Model for AddressCard.
  late AddressCard3Model addressCardModel3;
  // Model for TextField.
  late TextField11Model textFieldModel1;
  // Model for TextField.
  late TextField11Model textFieldModel2;
  // Model for TextField.
  late TextField11Model textFieldModel3;
  // Model for TextField.
  late TextField11Model textFieldModel4;
  // Model for Button.
  late Button36Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button36Model());
    addressCardModel1 = createModel(context, () => AddressCard3Model());
    addressCardModel2 = createModel(context, () => AddressCard3Model());
    addressCardModel3 = createModel(context, () => AddressCard3Model());
    textFieldModel1 = createModel(context, () => TextField11Model());
    textFieldModel2 = createModel(context, () => TextField11Model());
    textFieldModel3 = createModel(context, () => TextField11Model());
    textFieldModel4 = createModel(context, () => TextField11Model());
    buttonModel2 = createModel(context, () => Button36Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    addressCardModel1.dispose();
    addressCardModel2.dispose();
    addressCardModel3.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    textFieldModel3.dispose();
    textFieldModel4.dispose();
    buttonModel2.dispose();
  }
}
