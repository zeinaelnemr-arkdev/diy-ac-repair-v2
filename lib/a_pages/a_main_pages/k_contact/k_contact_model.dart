import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s10_contac_us/s10_contac_us_widget.dart';
import '/b_screen_components/s11_socials/s11_socials_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'k_contact_widget.dart' show KContactWidget;
import 'package:flutter/material.dart';

class KContactModel extends FlutterFlowModel<KContactWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in K-Contact widget.
  List<ACMakeRecord>? acMakeAct;
  // Stores action output result for [Firestore Query - Query a collection] action in K-Contact widget.
  List<ACModelRecord>? acModelAct;
  // Stores action output result for [Custom Action - mapACMakeToDto] action in K-Contact widget.
  List<AcMakeDTOStruct>? acMakeMap;
  // Stores action output result for [Custom Action - mapACModelToDto] action in K-Contact widget.
  List<AcModelDTOStruct>? acModelMap;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S10_ContacUs component.
  late S10ContacUsModel s10ContacUsModel;
  // Model for S11_Socials component.
  late S11SocialsModel s11SocialsModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s10ContacUsModel = createModel(context, () => S10ContacUsModel());
    s11SocialsModel = createModel(context, () => S11SocialsModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s10ContacUsModel.dispose();
    s11SocialsModel.dispose();
    s12FooterModel.dispose();
  }
}
