import '/components/address_card2_widget.dart';
import '/components/button27_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'l_shipping_address_mobile02_widget.dart'
    show LShippingAddressMobile02Widget;
import 'package:flutter/material.dart';

class LShippingAddressMobile02Model
    extends FlutterFlowModel<LShippingAddressMobile02Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button27Model buttonModel;
  // Model for AddressCard.
  late AddressCard2Model addressCardModel1;
  // Model for AddressCard.
  late AddressCard2Model addressCardModel2;
  // Model for AddressCard.
  late AddressCard2Model addressCardModel3;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button27Model());
    addressCardModel1 = createModel(context, () => AddressCard2Model());
    addressCardModel2 = createModel(context, () => AddressCard2Model());
    addressCardModel3 = createModel(context, () => AddressCard2Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    addressCardModel1.dispose();
    addressCardModel2.dispose();
    addressCardModel3.dispose();
  }
}
