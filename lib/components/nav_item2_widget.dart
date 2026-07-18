import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_item2_model.dart';
export 'nav_item2_model.dart';

class NavItem2Widget extends StatefulWidget {
  const NavItem2Widget({
    super.key,
    this.icon,
    String? label,
    bool? active,
  })  : this.label = label ?? 'Dashboard',
        this.active = active ?? false;

  final Widget? icon;
  final String label;
  final bool active;

  @override
  State<NavItem2Widget> createState() => _NavItem2WidgetState();
}

class _NavItem2WidgetState extends State<NavItem2Widget> {
  late NavItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavItem2Model());

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
        color: widget.active
            ? FlutterFlowTheme.of(context).primary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: widget.active
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).alternate,
          width: widget.active ? 1.0 : 1.0,
        ),
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
                  'Dashboard',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                      color: widget.active
                          ? Colors.white
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
    );
  }
}
