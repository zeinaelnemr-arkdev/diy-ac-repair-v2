import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'payment_badge2_model.dart';
export 'payment_badge2_model.dart';

class PaymentBadge2Widget extends StatefulWidget {
  const PaymentBadge2Widget({
    super.key,
    String? label,
  }) : this.label = label ?? 'VISA';

  final String label;

  @override
  State<PaymentBadge2Widget> createState() => _PaymentBadge2WidgetState();
}

class _PaymentBadge2WidgetState extends State<PaymentBadge2Widget> {
  late PaymentBadge2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentBadge2Model());

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
        borderRadius: BorderRadius.circular(2.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.label,
              'VISA',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.2,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelSmallIsCustom,
                ),
          ),
        ),
      ),
    );
  }
}
