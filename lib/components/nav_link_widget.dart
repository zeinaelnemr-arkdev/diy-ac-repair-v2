import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_link_model.dart';
export 'nav_link_model.dart';

class NavLinkWidget extends StatefulWidget {
  const NavLinkWidget({
    super.key,
    String? label,
  }) : this.label = label ?? 'Repair Guides';

  final String label;

  @override
  State<NavLinkWidget> createState() => _NavLinkWidgetState();
}

class _NavLinkWidgetState extends State<NavLinkWidget> {
  late NavLinkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavLinkModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 8.0, 16.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.label,
              'Repair Guides',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  lineHeight: 1.3,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelLargeIsCustom,
                ),
          ),
        ),
      ),
    );
  }
}
