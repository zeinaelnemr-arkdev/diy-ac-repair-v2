import '/backend/backend.dart';
import '/c_components/dialog_components/subscription_success_dialog/subscription_success_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 's11_socials_model.dart';
export 's11_socials_model.dart';

class S11SocialsWidget extends StatefulWidget {
  const S11SocialsWidget({super.key});

  @override
  State<S11SocialsWidget> createState() => _S11SocialsWidgetState();
}

class _S11SocialsWidgetState extends State<S11SocialsWidget>
    with TickerProviderStateMixin {
  late S11SocialsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S11SocialsModel());

    _model.textFieldEmailAddressTextController ??= TextEditingController();
    _model.textFieldEmailAddressFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(5.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 12500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.05, 1.05),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Wrap(
          spacing: 0.0,
          runSpacing: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
            50.0,
          ),
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : (MediaQuery.sizeOf(context).width * 0.502),
              height: valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 250.0
                    : 370.0,
                370.0,
              ),
              constraints: BoxConstraints(
                maxWidth: 1055.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 0.0
                      : 50.0,
                  50.0,
                )),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.095,
                      constraints: BoxConstraints(
                        maxHeight: 100.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: AutoSizeText(
                          'SUBSCRIBE TO\nOUR NEWSLETTER',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                letterSpacing:
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? FFAppConstants.LetterSpacingM
                                        : FFAppConstants.LetterSpacingTD,
                                fontWeight: FontWeight.normal,
                                lineHeight: 0.8,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineLargeIsCustom,
                              ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 25.0),
                        child: AutoSizeText(
                          'Stay updated with helpful tips, repair guides, and special offers to keep your AC running smoothly.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                lineHeight: 1.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      constraints: BoxConstraints(
                        minHeight: 50.0,
                        maxHeight: valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width < kBreakpointSmall
                              ? 50.0
                              : 100.0,
                          100.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 50.0
                                  : (MediaQuery.sizeOf(context).height * 0.1),
                              100.0,
                            ),
                            height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 50.0
                                  : (MediaQuery.sizeOf(context).height * 0.1),
                              100.0,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.email_sharp,
                                color: FlutterFlowTheme.of(context).primary,
                                size: valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 25.0
                                      : 40.0,
                                  40.0,
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            width: 1.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          Expanded(
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 15.0
                                              : 25.0,
                                          50.0,
                                        ),
                                        0.0,
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 15.0
                                              : 25.0,
                                          50.0,
                                        ),
                                        0.0),
                                    child: TextFormField(
                                      controller: _model
                                          .textFieldEmailAddressTextController,
                                      focusNode:
                                          _model.textFieldEmailAddressFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textFieldEmailAddressTextController',
                                        Duration(milliseconds: 200),
                                        () => safeSetState(() {}),
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'Email Address',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldEmailAddressTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  if (_model.errorMS != null &&
                                      _model.errorMS != '')
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 15.0
                                                        : 25.0,
                                                    50.0,
                                                  ),
                                                  5.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 15.0
                                                        : 25.0,
                                                    50.0,
                                                  ),
                                                  5.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.errorMS,
                                              'error',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .redColor,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            overflow: TextOverflow.visible,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.form = true;
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        safeSetState(() => _model.form = false);
                                        return;
                                      }
                                      _model.count =
                                          await querySubscriberRecordCount(
                                        queryBuilder: (subscriberRecord) =>
                                            subscriberRecord.where(
                                          'email',
                                          isEqualTo: _model
                                              .textFieldEmailAddressTextController
                                              .text,
                                        ),
                                      );
                                      if (_model.count == 0) {
                                        var subscriberRecordReference =
                                            SubscriberRecord.collection.doc();
                                        await subscriberRecordReference
                                            .set(createSubscriberRecordData(
                                          email: _model
                                              .textFieldEmailAddressTextController
                                              .text,
                                          createdAt: getCurrentTimestamp,
                                        ));
                                        _model.subsDoc = SubscriberRecord
                                            .getDocumentFromData(
                                                createSubscriberRecordData(
                                                  email: _model
                                                      .textFieldEmailAddressTextController
                                                      .text,
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                ),
                                                subscriberRecordReference);
                                        await Future.wait([
                                          Future(() async {
                                            var mailRecordReference =
                                                MailRecord.collection.doc();
                                            await mailRecordReference
                                                .set(createMailRecordData(
                                              to: _model
                                                  .textFieldEmailAddressTextController
                                                  .text,
                                              message: createMessageStruct(
                                                subject:
                                                    'Welcome to DIY AC Repair Newsletter 🎉',
                                                text: 'DIY AC Repair',
                                                html:
                                                    '<!DOCTYPE html> <html> <head>   <meta charset=\"UTF-8\"> </head> <body style=\"font-family: Arial, sans-serif; background-color:#f6f8fa; margin:0; padding:0;\">      <div style=\"max-width:500px; margin:40px auto; background:#ffffff; border-radius:8px; padding:30px; text-align:center;\">          <h2 style=\"color:#333;\">Welcome to DIY AC Repair :tada:</h2>          <p style=\"color:#555;\">       Hello,     </p>      <p style=\"color:#555;\">       You’ve successfully subscribed to the <strong>DIY AC Repair</strong> newsletter.     </p>      <p style=\"color:#555;\">       You’ll now receive helpful tips, repair guides, and updates to keep your AC running smoothly.     </p>      <a href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app/\"         style=\"display:inline-block; margin-top:20px; padding:12px 20px; background-color:#4a90e2; color:#ffffff; text-decoration:none; border-radius:4px;\">        Visit DIY AC Repair     </a>      <p style=\"color:#999; font-size:12px; margin-top:30px;\">       If you no longer wish to receive these emails, you can        <a \" style=\"color:#4a90e2;\"  href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app/unsubscribe?subscriberId=${_model.subsDoc?.reference.id}\">unsubscribe here</a>.     </p>    </div>  </body> </html>',
                                                clearUnsetFields: false,
                                                create: true,
                                              ),
                                            ));
                                            _model.mail =
                                                MailRecord.getDocumentFromData(
                                                    createMailRecordData(
                                                      to: _model
                                                          .textFieldEmailAddressTextController
                                                          .text,
                                                      message:
                                                          createMessageStruct(
                                                        subject:
                                                            'Welcome to DIY AC Repair Newsletter 🎉',
                                                        text: 'DIY AC Repair',
                                                        html:
                                                            '<!DOCTYPE html> <html> <head>   <meta charset=\"UTF-8\"> </head> <body style=\"font-family: Arial, sans-serif; background-color:#f6f8fa; margin:0; padding:0;\">      <div style=\"max-width:500px; margin:40px auto; background:#ffffff; border-radius:8px; padding:30px; text-align:center;\">          <h2 style=\"color:#333;\">Welcome to DIY AC Repair :tada:</h2>          <p style=\"color:#555;\">       Hello,     </p>      <p style=\"color:#555;\">       You’ve successfully subscribed to the <strong>DIY AC Repair</strong> newsletter.     </p>      <p style=\"color:#555;\">       You’ll now receive helpful tips, repair guides, and updates to keep your AC running smoothly.     </p>      <a href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app/\"         style=\"display:inline-block; margin-top:20px; padding:12px 20px; background-color:#4a90e2; color:#ffffff; text-decoration:none; border-radius:4px;\">        Visit DIY AC Repair     </a>      <p style=\"color:#999; font-size:12px; margin-top:30px;\">       If you no longer wish to receive these emails, you can        <a \" style=\"color:#4a90e2;\"  href=\"https://d-i-y-a-cweb-23yv9j.flutterflow.app/unsubscribe?subscriberId=${_model.subsDoc?.reference.id}\">unsubscribe here</a>.     </p>    </div>  </body> </html>',
                                                        clearUnsetFields: false,
                                                        create: true,
                                                      ),
                                                    ),
                                                    mailRecordReference);
                                            safeSetState(() {
                                              _model
                                                  .textFieldEmailAddressTextController
                                                  ?.clear();
                                            });
                                          }),
                                          Future(() async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child:
                                                      SubscriptionSuccessDialogWidget(),
                                                );
                                              },
                                            );
                                          }),
                                        ]);
                                      } else {
                                        _model.errorMS =
                                            'This email is already subscribed.';
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: AutoSizeText(
                                              'SUBSCRIBE',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallIsCustom,
                                                  ),
                                            ),
                                          ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 24.0
                                                : 48.0,
                                            48.0,
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'iconOnActionTriggerAnimation1']!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered1 = true);
                                // Start Arrow Animation
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation1'] !=
                                    null) {
                                  await animationsMap[
                                          'iconOnActionTriggerAnimation1']!
                                      .controller
                                    ..reset()
                                    ..repeat(reverse: true);
                                }
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered1 = false);
                                // Reset Arrow Animation
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation1'] !=
                                    null) {
                                  animationsMap[
                                          'iconOnActionTriggerAnimation1']!
                                      .controller
                                      .reset();
                                }
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : (MediaQuery.sizeOf(context).width * 0.43),
              height: valueOrDefault<double>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 320.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 305.0;
                  } else {
                    return 370.0;
                  }
                }(),
                370.0,
              ),
              constraints: BoxConstraints(
                maxWidth: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointLarge
                      ? double.infinity
                      : 860.0,
                  860.0,
                ),
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      ),
                      25.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      ),
                      25.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 734.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Stack(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 25.0,
                              alignment: WrapAlignment.spaceBetween,
                              crossAxisAlignment: WrapCrossAlignment.end,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.21,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.21,
                                  constraints: BoxConstraints(
                                    minWidth: valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 200.0
                                          : 300.0,
                                      300.0,
                                    ),
                                    maxWidth: 410.0,
                                    maxHeight: 230.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: AutoSizeText(
                                      'FOLLOW OUR\nSOCIALS',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            letterSpacing:
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? FFAppConstants
                                                        .LetterSpacingM
                                                    : FFAppConstants
                                                        .LetterSpacingTD,
                                            lineHeight: 1.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .displaySmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.14,
                                  constraints: BoxConstraints(
                                    minWidth: 260.0,
                                    maxWidth: 280.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 60.0,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 54.0,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 60.0,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.linkedin,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 60.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, -0.7),
                          child: MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Icon(
                              Icons.emergency_sharp,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 80.0,
                            )
                                .animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation']!)
                                .animateOnActionTrigger(
                                  animationsMap[
                                      'iconOnActionTriggerAnimation2']!,
                                ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = true);
                              // Start MiniStar Animation
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                await animationsMap[
                                        'iconOnActionTriggerAnimation2']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = false);
                              // Reset MiniStar Animation
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation2']!
                                    .controller
                                    .reset();
                              }
                            }),
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
      ),
    );
  }
}
