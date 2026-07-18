import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'role_item_model.dart';
export 'role_item_model.dart';

class RoleItemWidget extends StatefulWidget {
  const RoleItemWidget({
    super.key,
    String? content,
    this.icon,
  }) : this.content = content ??
            'DELIVER PARTS AND TOOLS QUICKLY AND AT A REASONABLE PRICE';

  final String content;
  final Widget? icon;

  @override
  State<RoleItemWidget> createState() => _RoleItemWidgetState();
}

class _RoleItemWidgetState extends State<RoleItemWidget> {
  late RoleItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoleItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.icon!,
        Expanded(
          flex: 1,
          child: Text(
            valueOrDefault<String>(
              widget.content,
              'DELIVER PARTS AND TOOLS QUICKLY AND AT A REASONABLE PRICE',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  lineHeight: 1.2,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelLargeIsCustom,
                ),
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
