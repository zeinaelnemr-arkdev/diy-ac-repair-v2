import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'status_illustration_model.dart';
export 'status_illustration_model.dart';

class StatusIllustrationWidget extends StatefulWidget {
  const StatusIllustrationWidget({
    super.key,
    Color? bgColor,
    this.iconName,
    Color? iconColor,
    String? title,
    String? subtitle,
  })  : this.bgColor = bgColor ?? const Color(0x00000000),
        this.iconColor = iconColor ?? const Color(0x00000000),
        this.title = title ?? 'Unsubscribe',
        this.subtitle = subtitle ??
            'We\'re sorry to see you go. Please confirm if you\'d like to stop receiving updates from DIY-AC.';

  final Color bgColor;
  final Widget? iconName;
  final Color iconColor;
  final String title;
  final String subtitle;

  @override
  State<StatusIllustrationWidget> createState() =>
      _StatusIllustrationWidgetState();
}

class _StatusIllustrationWidgetState extends State<StatusIllustrationWidget> {
  late StatusIllustrationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusIllustrationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 120.0,
          height: 120.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.bgColor,
              Color(0x00000000),
            ),
            borderRadius: BorderRadius.circular(0.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: widget.iconName!,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              valueOrDefault<String>(
                widget.title,
                'Unsubscribe',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineMediumFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    lineHeight: 1.25,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget.subtitle,
                'We\'re sorry to see you go. Please confirm if you\'d like to stop receiving updates from DIY-AC.',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    lineHeight: 1.5,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                  ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ].divide(SizedBox(height: 24.0)),
    );
  }
}
