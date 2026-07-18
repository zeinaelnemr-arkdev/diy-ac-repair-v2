import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'objective_card_model.dart';
export 'objective_card_model.dart';

class ObjectiveCardWidget extends StatefulWidget {
  const ObjectiveCardWidget({
    super.key,
    Color? bg,
    String? desc,
    this.icon,
    Color? textColor,
    String? title,
  })  : this.bg = bg ?? const Color(0x00000000),
        this.desc = desc ??
            'Helping you identify and repair non-complex A/C failures without the wait.',
        this.textColor = textColor ?? const Color(0x00000000),
        this.title = title ?? 'FIX SIMPLE ISSUES';

  final Color bg;
  final String desc;
  final Widget? icon;
  final Color textColor;
  final String title;

  @override
  State<ObjectiveCardWidget> createState() => _ObjectiveCardWidgetState();
}

class _ObjectiveCardWidgetState extends State<ObjectiveCardWidget> {
  late ObjectiveCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ObjectiveCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.bg,
          FlutterFlowTheme.of(context).secondaryBackground,
        ),
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
              widget.icon!,
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'FIX SIMPLE ISSUES',
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      color: valueOrDefault<Color>(
                        widget.textColor,
                        FlutterFlowTheme.of(context).primaryText,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleLargeIsCustom,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.desc,
                  'Helping you identify and repair non-complex A/C failures without the wait.',
                ),
                maxLines: 3,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: valueOrDefault<Color>(
                        widget.textColor,
                        FlutterFlowTheme.of(context).primaryText,
                      ),
                      letterSpacing: 0.0,
                      lineHeight: 1.5,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
