import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/b_screen_components/s19_request_tech/s19_request_tech_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'l_request_technical_widget.dart' show LRequestTechnicalWidget;
import 'package:flutter/material.dart';

class LRequestTechnicalModel extends FlutterFlowModel<LRequestTechnicalWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in L-Request_Technical widget.
  List<ACMakeRecord>? acMakeAct;
  // Stores action output result for [Firestore Query - Query a collection] action in L-Request_Technical widget.
  List<ACModelRecord>? acModelAct;
  // Stores action output result for [Custom Action - mapACMakeToDto] action in L-Request_Technical widget.
  List<AcMakeDTOStruct>? acMakeMap;
  // Stores action output result for [Custom Action - mapACModelToDto] action in L-Request_Technical widget.
  List<AcModelDTOStruct>? acModelMap;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for S19_Request_Tech component.
  late S19RequestTechModel s19RequestTechModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    s19RequestTechModel = createModel(context, () => S19RequestTechModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    s19RequestTechModel.dispose();
    s12FooterModel.dispose();
  }
}
