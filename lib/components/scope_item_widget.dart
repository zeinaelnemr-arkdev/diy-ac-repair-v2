import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'scope_item_model.dart';
export 'scope_item_model.dart';

class ScopeItemWidget extends StatefulWidget {
  const ScopeItemWidget({
    super.key,
    String? num,
    String? subtitle,
    String? title,
  })  : this.num = num ?? '01',
        this.subtitle = subtitle ?? 'CONDENSER COMPONENT',
        this.title = title ?? 'THE FAN MOTOR';

  final String num;
  final String subtitle;
  final String title;

  @override
  State<ScopeItemWidget> createState() => _ScopeItemWidgetState();
}

class _ScopeItemWidgetState extends State<ScopeItemWidget> {
  late ScopeItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScopeItemModel());

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
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.white,
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
              Text(
                valueOrDefault<String>(
                  widget.num,
                  '01',
                ),
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineSmallFamily,
                      color: Color(0x99FFFFFF),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'THE FAN MOTOR',
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).titleMediumFamily,
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleMediumIsCustom,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.subtitle,
                  'CONDENSER COMPONENT',
                ),
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      color: Color(0xCCFFFFFF),
                      letterSpacing: 0.0,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
