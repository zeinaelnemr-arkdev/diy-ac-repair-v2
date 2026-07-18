import '/components/limit_badge_widget.dart';
import '/components/objective_card_widget.dart';
import '/components/role_item_widget.dart';
import '/components/scope_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'i_about_dektop_model.dart';
export 'i_about_dektop_model.dart';

class IAboutDektopWidget extends StatefulWidget {
  const IAboutDektopWidget({super.key});

  @override
  State<IAboutDektopWidget> createState() => _IAboutDektopWidgetState();
}

class _IAboutDektopWidgetState extends State<IAboutDektopWidget> {
  late IAboutDektopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IAboutDektopModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.rectangle,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80.0, 60.0, 80.0, 60.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          child: Container(
                            child: Text(
                              'SYSTEM MANIFESTO  V1.0',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelSmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.2,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelSmallIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'WHO ARE\nWE?',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  fontSize: 84.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w900,
                                  lineHeight: 0.9,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineLargeIsCustom,
                                ),
                      ),
                      Text(
                        'Broken AC is a big inconvenience due to its repair cost and time it takes to fix it. We are a small company with the objective of helping you fix simple issues in your own A/C quickly and cheaper.',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                  offset: Offset(
                                    8.0,
                                    8.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Container(
                                child: Text(
                                  '\"Some say that 80% of the A/C issues are electrical. Many of these issues, a handy man, may be able to fix given the parts, the tools and the knowledge.\"',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontStyle: FontStyle.italic,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ClipRRect(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
                            ),
                          ),
                          child: CachedNetworkImage(
                            fadeInDuration: Duration(milliseconds: 0),
                            fadeOutDuration: Duration(milliseconds: 0),
                            imageUrl:
                                'https://dimg.dreamflow.cloud/v1/image/vintage%20black%20and%20white%20technical%20internal%20components%20of%20an%20air%20conditioning%20unit',
                            width: 400.0,
                            height: 400.0,
                            fit: BoxFit.cover,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              child: Container(
                                child: Text(
                                  'DIAGNOSE_FAST.01',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        lineHeight: 1.2,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelSmallIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(width: 32.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80.0, 40.0, 80.0, 40.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OBJECTIVES',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w900,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Divider(
                        height: 16.0,
                        thickness: 2.0,
                        indent: 0.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.objectiveCardModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: ObjectiveCardWidget(
                              bg: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              desc:
                                  'Helping you identify and repair non-complex A/C failures without the wait.',
                              icon: Icon(
                                Icons.build_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 32.0,
                              ),
                              textColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              title: 'FIX SIMPLE ISSUES',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.objectiveCardModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: ObjectiveCardWidget(
                              bg: FlutterFlowTheme.of(context).primaryText,
                              desc:
                                  'We send parts and tools quickly so you can restore cooling as soon as possible.',
                              icon: Icon(
                                Icons.speed_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 32.0,
                              ),
                              textColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              title: 'RAPID DELIVERY',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.objectiveCardModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: ObjectiveCardWidget(
                              bg: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              desc:
                                  'Significantly cheaper than hiring specialized A/C professionals for basic tasks.',
                              icon: Icon(
                                Icons.payments_outlined,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 32.0,
                              ),
                              textColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              title: 'COST EFFICIENCY',
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE5E5E5),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(32.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'PROFESSIONAL NETWORK',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  lineHeight: 1.2,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeIsCustom,
                                                ),
                                          ),
                                          Text(
                                            'If the issue is beyond a handy man\'s ability, we show you trusted A/C professionals to focus on the difficult issues, reducing wait times for everyone.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.5,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                    Icon(
                                      Icons.groups_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 48.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: wrapWithModel(
                            model: _model.objectiveCardModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: ObjectiveCardWidget(
                              bg: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              desc:
                                  'Reducing the load on professionals so they can focus on complex diagnostic challenges.',
                              icon: Icon(
                                Icons.lightbulb_outlined,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 32.0,
                              ),
                              textColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              title: 'EXPERT FOCUS',
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ].divide(SizedBox(height: 32.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80.0, 40.0, 80.0, 40.0),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                  borderRadius: BorderRadius.circular(0.0),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(60.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Text(
                                  'AC',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineLargeFamily,
                                        color: Color(0x1AF2F2F2),
                                        fontSize: 240.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        lineHeight: 1.1,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineLargeIsCustom,
                                      ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'TECHNICAL SCOPE',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w900,
                                          lineHeight: 1.2,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineMediumIsCustom,
                                        ),
                                  ),
                                  Container(
                                    width: 600.0,
                                    child: Text(
                                      'The scope currently is the central split units. We focus on 3 parts that commonly fail in the outdoor (condensing) unit. Diagnosis steps are arranged by tool requirements.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xCCF2F2F2),
                                            letterSpacing: 0.0,
                                            lineHeight: 1.5,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.scopeItemModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ScopeItemWidget(
                                  num: '01',
                                  subtitle: 'CONDENSER COMPONENT',
                                  title: 'THE FAN MOTOR',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.scopeItemModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ScopeItemWidget(
                                  num: '02',
                                  subtitle: 'ELECTRICAL STORAGE',
                                  title: 'THE CAPACITORS',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.scopeItemModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ScopeItemWidget(
                                  num: '03',
                                  subtitle: 'SWITCHING LOGIC',
                                  title: 'THE CONTACTOR',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 24.0)),
                        ),
                      ].divide(SizedBox(height: 32.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80.0, 40.0, 80.0, 40.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          child: Container(
                            child: Text(
                              'OUR ROLE',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelSmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.2,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelSmallIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(32.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.roleItemModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RoleItemWidget(
                                    content:
                                        'DELIVER PARTS AND TOOLS QUICKLY AND AT A REASONABLE PRICE',
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.roleItemModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RoleItemWidget(
                                    content:
                                        'SHOW YOU OTHER HANDY MEN AND A/C PROFESSIONALS WHO CAN HELP',
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.roleItemModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RoleItemWidget(
                                    content:
                                        'PROVIDE A PLATFORM FOR SHARING TECHNICAL KNOWLEDGE',
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.roleItemModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RoleItemWidget(
                                    content:
                                        'CONTRIBUTE TO THE GLOBAL KNOWLEDGE BASE',
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          child: Container(
                            child: Text(
                              'YOUR ROLE ACTION',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelSmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.2,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelSmallIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(32.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.roleItemModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RoleItemWidget(
                                    content:
                                        'PROVIDE FEEDBACK FOR ALL OF US TO IMPROVE',
                                    icon: Icon(
                                      Icons.chat_bubble_outline,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.roleItemModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RoleItemWidget(
                                    content:
                                        'PROVIDE TIPS, REVIEWS, IDEAS FOR THE SUCCESS OF US AND OTHERS',
                                    icon: Icon(
                                      Icons.lightbulb_outline,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 16.0,
                                  thickness: 2.0,
                                  indent: 0.0,
                                  endIndent: 0.0,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                Text(
                                  'SUCCESS IS A COLLECTIVE EFFORT.',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        lineHeight: 1.2,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ),
              ].divide(SizedBox(width: 32.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80.0, 40.0, 80.0, 40.0),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                ),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).error,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          child: Container(
                            child: Container(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.warning_rounded,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  Text(
                                    'CATIOUS',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmallFamily,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelSmallIsCustom,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CRITICAL\nLIMITS',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w900,
                                          lineHeight: 1.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    'IF YOU OBSERVE THESE SYMPTOMS, DO NOT PROCEED WITH DIY REPAIR. CONTACT A LICENSED PROFESSIONAL IMMEDIATELY.',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w900,
                                          lineHeight: 1.2,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelLargeIsCustom,
                                        ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFB22222),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          offset: Offset(
                                            4.0,
                                            4.0,
                                          ),
                                          spreadRadius: 0.0,
                                        )
                                      ],
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Container(
                                        child: Text(
                                          'VOLTAGE WARNING: OBSERVE ALL SAFETY PROTOCOLS.',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                lineHeight: 1.2,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.limitBadgeModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: LimitBadgeWidget(
                                            text:
                                                'DIRTY AIR FILTER (CHECK/REPLACE BEFORE DIAGNOSIS).',
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.limitBadgeModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: LimitBadgeWidget(
                                            text:
                                                'ICE ON THE BIGGER COPPER PIPE (LOW REFRIGERANT OR INDOOR UNIT FAILURE).',
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.limitBadgeModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: LimitBadgeWidget(
                                            text:
                                                'NO AIR FROM INDOOR VENTS (INDOOR UNIT OR THERMOSTAT ISSUE).',
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.limitBadgeModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: LimitBadgeWidget(
                                            text:
                                                'SLIGHTLY COLD AIR (REFRIGERANT ISSUE).',
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Container(
                                    height: 83.11,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Container(
                                        child: Wrap(
                                          spacing: 0.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.cancel_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 20.0,
                                                ),
                                                Text(
                                                  'CONDENSER FAN TURNS BUT COPPER PIPE IS COLD AND NOT \nCOOLING (REFRIGERANT/TECHNICAL ISSUE).',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ].divide(SizedBox(width: 32.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
