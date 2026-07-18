import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/components/abcde/abcde_widget.dart';
import '/l_user_profile/l_user_profilemobile/l_user_profilemobile_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'l_user_profile_model.dart';
export 'l_user_profile_model.dart';

class LUserProfileWidget extends StatefulWidget {
  const LUserProfileWidget({super.key});

  static String routeName = 'L-User_profile';
  static String routePath = '/lUserProfile';

  @override
  State<LUserProfileWidget> createState() => _LUserProfileWidgetState();
}

class _LUserProfileWidgetState extends State<LUserProfileWidget> {
  late LUserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LUserProfileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                                      child: Visibility(
                                        visible: responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ),
                                        child: wrapWithModel(
                                          model: _model.abcdeModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AbcdeWidget(),
                                        ),
                                      ),
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
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      wrapWithModel(
                                        model: _model.s12FooterModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: S12FooterWidget(),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      wrapWithModel(
                                        model: _model.lUserProfilemobileModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: LUserProfilemobileWidget(),
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
