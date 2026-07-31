import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s10_contac_us/s10_contac_us_widget.dart';
import '/b_screen_components/s11_socials/s11_socials_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'k_contact_model.dart';
export 'k_contact_model.dart';

class KContactWidget extends StatefulWidget {
  const KContactWidget({super.key});

  static String routeName = 'K-Contact';
  static String routePath = '/contactus';

  @override
  State<KContactWidget> createState() => _KContactWidgetState();
}

class _KContactWidgetState extends State<KContactWidget> {
  late KContactModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KContactModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().acMakeList.isNotEmpty) ||
          !(FFAppState().acModelList.isNotEmpty)) {
        _model.acMakeAct = await queryACMakeRecordOnce(
          queryBuilder: (aCMakeRecord) => aCMakeRecord.where(
            'approved',
            isEqualTo: true,
          ),
        );
        _model.acModelAct = await queryACModelRecordOnce(
          queryBuilder: (aCModelRecord) => aCModelRecord.where(
            'approved',
            isEqualTo: true,
          ),
        );
        _model.acMakeMap = await actions.mapACMakeToDto(
          _model.acMakeAct!.toList(),
        );
        _model.acModelMap = await actions.mapACModelToDto(
          _model.acModelAct!.toList(),
        );
        FFAppState().acMakeList = _model.acMakeMap!
            .sortedList(keyOf: (e) => e.name, desc: false)
            .toList()
            .cast<AcMakeDTOStruct>();
        FFAppState().acModelList = _model.acModelMap!
            .sortedList(keyOf: (e) => e.name, desc: false)
            .toList()
            .cast<AcModelDTOStruct>();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 2000.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: CachedNetworkImageProvider(
                                valueOrDefault<String>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/snombgtjslh3/Lines_Phone.png'
                                      : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.s01NavigatioBarModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: S01NavigatioBarWidget(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 25.0
                                            : 100.0,
                                        100.0,
                                      ),
                                      decoration: BoxDecoration(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    wrapWithModel(
                                      model: _model.s10ContacUsModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: S10ContacUsWidget(
                                        key: ValueKey('contact_section'),
                                      ),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 25.0
                                            : 100.0,
                                        100.0,
                                      ),
                                      decoration: BoxDecoration(),
                                    ),
                                    wrapWithModel(
                                      model: _model.s11SocialsModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: S11SocialsWidget(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 25.0
                                            : 100.0,
                                        100.0,
                                      ),
                                      decoration: BoxDecoration(),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                    ))
                                      wrapWithModel(
                                        model: _model.s12FooterModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: S12FooterWidget(),
                                      ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(
                                height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
                  .addToStart(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  )))
                  .addToEnd(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  ))),
            ),
          ),
        ),
      ),
    );
  }
}
