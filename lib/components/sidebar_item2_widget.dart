import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sidebar_item2_model.dart';
export 'sidebar_item2_model.dart';

class SidebarItem2Widget extends StatefulWidget {
  const SidebarItem2Widget({
    super.key,
    this.icon,
    String? label,
    bool? active,
  })  : this.label = label ?? 'Profile',
        this.active = active ?? true;

  final Widget? icon;
  final String label;
  final bool active;

  @override
  State<SidebarItem2Widget> createState() => _SidebarItem2WidgetState();
}

class _SidebarItem2WidgetState extends State<SidebarItem2Widget> {
  late SidebarItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarItem2Model());

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
            borderRadius: BorderRadius.circular(0.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
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
                        'Profile',
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            color: widget.active
                                ? FlutterFlowTheme.of(context).primaryBackground
                                : FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelLargeIsCustom,
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
