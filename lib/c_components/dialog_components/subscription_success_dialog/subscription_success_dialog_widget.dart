import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'subscription_success_dialog_model.dart';
export 'subscription_success_dialog_model.dart';

class SubscriptionSuccessDialogWidget extends StatefulWidget {
  const SubscriptionSuccessDialogWidget({super.key});

  @override
  State<SubscriptionSuccessDialogWidget> createState() =>
      _SubscriptionSuccessDialogWidgetState();
}

class _SubscriptionSuccessDialogWidgetState
    extends State<SubscriptionSuccessDialogWidget> {
  late SubscriptionSuccessDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscriptionSuccessDialogModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 6000,
        ),
      );
      Navigator.pop(context);
    });

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              FFAppConstants.primaryPadding,
              0.0,
            ),
            0.0,
            valueOrDefault<double>(
              FFAppConstants.primaryPadding,
              0.0,
            ),
            0.0),
        child: Container(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return (MediaQuery.sizeOf(context).width - 32);
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 428.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 428.0;
            } else {
              return 428.0;
            }
          }(),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 21.0, 16.0, 21.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).greenLight,
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/bookingsucess_na.gif',
                      width: 64.0,
                      height: 64.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                AutoSizeText(
                  '🎉 Yeeha! Your subscription has been successfully activated!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.outfit(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.2,
                      ),
                ),
              ].divide(SizedBox(height: 28.0)).addToEnd(SizedBox(height: 28.0)),
            ),
          ),
        ),
      ),
    );
  }
}
