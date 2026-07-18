import '/components/industrial_badge_widget.dart';
import '/components/objective_card2_widget.dart';
import '/components/scope_item2_widget.dart';
import '/components/technical_tag_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'i_about_mobile_model.dart';
export 'i_about_mobile_model.dart';

class IAboutMobileWidget extends StatefulWidget {
  const IAboutMobileWidget({super.key});

  @override
  State<IAboutMobileWidget> createState() => _IAboutMobileWidgetState();
}

class _IAboutMobileWidgetState extends State<IAboutMobileWidget> {
  late IAboutMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IAboutMobileModel());

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
              shape: BoxShape.rectangle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'WHO ARE\nWE?',
                  style: FlutterFlowTheme.of(context).displayMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).displayMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.05,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).displayMediumIsCustom,
                      ),
                ),
                Text(
                  'Broken AC is a big inconvenience due to its repair cost and time it takes to fix it. We are a small company with the objective of helping you fix simple issues in your own A/C quickly and cheaper.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.5,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                Container(
                  height: 300.0,
                  child: Stack(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 0),
                          fadeOutDuration: Duration(milliseconds: 0),
                          imageUrl:
                              'https://dimg.dreamflow.cloud/v1/image/industrial%20air%20conditioning%20ductwork%20pipes%20monochrome',
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              child: wrapWithModel(
                                model: _model.technicalTagModel,
                                updateCallback: () => safeSetState(() {}),
                                child: TechnicalTagWidget(
                                  label: 'DIAGNOSE_FAST.01',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xC41A1A1A),
                    borderRadius: BorderRadius.circular(2.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Text(
                        '\"Some say that 80% of the A/C issues are electrical. Many of these issues, a handy man, may be able to fix given the parts, the tools and the knowledge.\"',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontStyle: FontStyle.italic,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OBJECTIVES',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
                          ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 0.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
                wrapWithModel(
                  model: _model.objectiveCardModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: ObjectiveCard2Widget(
                    bg: FlutterFlowTheme.of(context).secondaryBackground,
                    desc:
                        'Helping you identify and repair non-complex A/C failures without the wait.',
                    icon: Icon(
                      Icons.build_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    textColor: FlutterFlowTheme.of(context).primaryText,
                    title: 'FIX SIMPLE ISSUES',
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    minHeight: 160.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xC41A1A1A),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.escalator_outlined,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 24.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'RAPID dELIVERY',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.4,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleMediumIsCustom,
                                    ),
                              ),
                              Text(
                                'We send  parts and tools quickly so you can  restore cooling as soon as possible.',
                                maxLines: 4,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodySmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodySmallIsCustom,
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.objectiveCardModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: ObjectiveCard2Widget(
                    bg: FlutterFlowTheme.of(context).secondaryBackground,
                    desc:
                        'Significantly cheaper than hiring specialized A/C professionals for basic tasks.',
                    icon: Icon(
                      Icons.payments_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    textColor: FlutterFlowTheme.of(context).primaryText,
                    title: 'COST EFFICIENCY',
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xC41A1A1A),
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TECHNICAL SCOPE',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                lineHeight: 1.2,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineSmallIsCustom,
                              ),
                        ),
                        Text(
                          'The scope currently is the central split units. We focus on 3 parts that commonly fail in the outdoor (condensing) unit. Diagnosis steps are arranged by tool requirements.',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: Color(0xB3FFFFFF),
                                letterSpacing: 0.0,
                                lineHeight: 1.5,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.scopeItemModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: ScopeItem2Widget(
                            num: '01',
                            subtitle: 'CONDENSER COMPONENT',
                            title: 'THE FAN MOTOR',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.scopeItemModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: ScopeItem2Widget(
                            num: '02',
                            subtitle: 'ELECTRICAL STORAGE',
                            title: 'THE CAPACITORS',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.scopeItemModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: ScopeItem2Widget(
                            num: '03',
                            subtitle: 'SWITCHING LOGIC',
                            title: 'THE CONTACTOR',
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.industrialBadgeModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: IndustrialBadgeWidget(
                        label: 'OUR_ROLE_MANIFESTO',
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(2.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 16.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'DELIVER PARTS AND TOOLS QUICKLY AND AT A REASONABLE PRICE',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.2,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 16.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'SHOW YOU OTHER HANDY MEN AND A/C PROFESSIONALS WHO CAN HELP',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.2,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    size: 16.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'PROVIDE A PLATFORM FOR SHARING TECHNICAL KNOWLEDGE',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.2,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.industrialBadgeModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: IndustrialBadgeWidget(
                        label: 'YOUR_ROLE_ACTION',
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(2.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.chat_bubble_outline_rounded,
                                    size: 18.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'PROVIDE FEEDBACK FOR ALL OF US TO IMPROVE',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.2,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.lightbulb_outline_rounded,
                                    size: 18.0,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'PROVIDE TIPS, REVIEWS, IDEAS FOR THE SUCCESS OF US AND OTHERS',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.2,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Divider(
                                height: 16.0,
                                thickness: 1.0,
                                indent: 0.0,
                                endIndent: 0.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Text(
                                'SUCCESS IS A COLLECTIVE EFFORT.',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.2,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelMediumIsCustom,
                                    ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).error,
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.report_problem_rounded,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 16.0,
                                  ),
                                  wrapWithModel(
                                    model: _model.industrialBadgeModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: IndustrialBadgeWidget(
                                      label: 'OUT_OF_SCOPE_LIMITS',
                                    ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Text(
                                'CRITICAL\nLIMITS',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .displaySmallFamily,
                                      color: FlutterFlowTheme.of(context).error,
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.1,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .displaySmallIsCustom,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.cancel_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 20.0,
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            'DIRTY AIR FILTER (CHECK/REPLACE BEFORE DIAGNOSIS).',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.2,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallIsCustom,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.cancel_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 20.0,
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            'ICE ON THE BIGGER COPPER PIPE (LOW REFRIGERANT OR INDOOR UNIT FAILURE).',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallFamily,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.2,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmallIsCustom,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 48.0,
          ),
        ],
      ),
    );
  }
}
