import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sidebar_item11_model.dart';
export 'sidebar_item11_model.dart';

class SidebarItem11Widget extends StatefulWidget {
  const SidebarItem11Widget({
    super.key,
    this.icon,
    String? label,
    bool? active,
  })  : this.label = label ?? 'DASHBOARD',
        this.active = active ?? false;

  final Widget? icon;
  final String label;
  final bool active;

  @override
  State<SidebarItem11Widget> createState() => _SidebarItem11WidgetState();
}

class _SidebarItem11WidgetState extends State<SidebarItem11Widget> {
  late SidebarItem11Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarItem11Model());

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
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.icon!,
                  Text(
                    valueOrDefault<String>(
                      widget.label,
                      'DASHBOARD',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: widget.active
                              ? FlutterFlowTheme.of(context).primaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.2,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
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
