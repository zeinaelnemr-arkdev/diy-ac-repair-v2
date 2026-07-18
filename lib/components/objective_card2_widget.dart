import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'objective_card2_model.dart';
export 'objective_card2_model.dart';

class ObjectiveCard2Widget extends StatefulWidget {
  const ObjectiveCard2Widget({
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
  State<ObjectiveCard2Widget> createState() => _ObjectiveCard2WidgetState();
}

class _ObjectiveCard2WidgetState extends State<ObjectiveCard2Widget> {
  late ObjectiveCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ObjectiveCard2Model());

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
      constraints: BoxConstraints(
        minHeight: 160.0,
      ),
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.bg,
          FlutterFlowTheme.of(context).secondaryBackground,
        ),
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
              widget.icon!,
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'FIX SIMPLE ISSUES',
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: valueOrDefault<Color>(
                            widget.textColor,
                            FlutterFlowTheme.of(context).primaryText,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.4,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleMediumIsCustom,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.desc,
                      'Helping you identify and repair non-complex A/C failures without the wait.',
                    ),
                    maxLines: 4,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodySmallFamily,
                          color: valueOrDefault<Color>(
                            widget.textColor,
                            FlutterFlowTheme.of(context).primaryText,
                          ),
                          letterSpacing: 0.0,
                          lineHeight: 1.5,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodySmallIsCustom,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
