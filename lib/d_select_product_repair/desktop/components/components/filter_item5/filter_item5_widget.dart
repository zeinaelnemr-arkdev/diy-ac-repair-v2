import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_item5_model.dart';
export 'filter_item5_model.dart';

class FilterItem5Widget extends StatefulWidget {
  const FilterItem5Widget({
    super.key,
    this.icon,
    String? label,
    bool? active,
  })  : this.label = label ?? 'Brand',
        this.active = active ?? false;

  final Widget? icon;
  final String label;
  final bool active;

  @override
  State<FilterItem5Widget> createState() => _FilterItem5WidgetState();
}

class _FilterItem5WidgetState extends State<FilterItem5Widget> {
  late FilterItem5Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterItem5Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: widget.active
                ? FlutterFlowTheme.of(context).primaryText
                : Colors.transparent,
            borderRadius: BorderRadius.circular(4.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.icon!,
                  Expanded(
                    flex: 1,
                    child: Text(
                      valueOrDefault<String>(
                        widget.label,
                        'Brand',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: widget.active
                                ? FlutterFlowTheme.of(context).primaryBackground
                                : FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            lineHeight: 1.5,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
