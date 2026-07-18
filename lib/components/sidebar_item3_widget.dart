import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sidebar_item3_model.dart';
export 'sidebar_item3_model.dart';

class SidebarItem3Widget extends StatefulWidget {
  const SidebarItem3Widget({
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
  State<SidebarItem3Widget> createState() => _SidebarItem3WidgetState();
}

class _SidebarItem3WidgetState extends State<SidebarItem3Widget> {
  late SidebarItem3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarItem3Model());

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
                ? FlutterFlowTheme.of(context).primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(0.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
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
                              ? FlutterFlowTheme.of(context).onPrimary
                              : FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
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
