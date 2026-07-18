import '/c_components/dialog_components/delete_cart_item_dialog/delete_cart_item_dialog_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'part_row_model.dart';
export 'part_row_model.dart';

class PartRowWidget extends StatefulWidget {
  const PartRowWidget({
    super.key,
    String? img,
    String? model,
    String? price,
    this.qty,
    String? title,
    required this.itemId,
  })  : this.img = img ??
            'https://dimg.dreamflow.cloud/v1/image/ac%20capacitor%20silver%20cylinder',
        this.model = model ?? '35/5 MFD 370V | Model: CAP-355',
        this.price = price ?? '\$22.50',
        this.title = title ?? 'Replacement Capacitor';

  final String img;
  final String model;
  final String price;
  final int? qty;
  final String title;
  final DocumentReference? itemId;

  @override
  State<PartRowWidget> createState() => _PartRowWidgetState();
}

class _PartRowWidgetState extends State<PartRowWidget> {
  late PartRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PartRowModel());

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
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
            child: Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 48.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.title,
                              'Replacement Capacitor',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.6,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.model,
                              '35/5 MFD 370V | Model: CAP-355',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodySmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.4,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodySmallIsCustom,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                    if (false)
                      Container(
                        width: 80.0,
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          widget.qty!.toString(),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                lineHeight: 1.5,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                    Container(
                      width: 80.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 80.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: FlutterFlowCountController(
                          decrementIconBuilder: (enabled) => Icon(
                            Icons.remove_rounded,
                            color: enabled
                                ? FlutterFlowTheme.of(context).secondaryText
                                : FlutterFlowTheme.of(context).alternate,
                            size: 16.0,
                          ),
                          incrementIconBuilder: (enabled) => Icon(
                            Icons.add_rounded,
                            color: enabled
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).alternate,
                            size: 16.0,
                          ),
                          countBuilder: (count) => Text(
                            count.toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleLargeIsCustom,
                                ),
                          ),
                          count: _model.countControllerValue ??=
                              valueOrDefault<int>(
                            widget.qty,
                            1,
                          ),
                          updateCount: (count) async {
                            safeSetState(
                                () => _model.countControllerValue = count);
                            await actions.updatecartItemsAction(
                              widget.itemId!,
                              _model.countControllerValue!,
                            );
                            await actions.calculateCartTotal(
                              null,
                              null,
                            );
                          },
                          stepSize: 1,
                          minimum: 1,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                        ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.price,
                          '\$22.50',
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.6,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Builder(
                        builder: (context) => FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.delete_outline,
                            color: FlutterFlowTheme.of(context).primary20,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: DeleteCartItemDialogWidget(
                                    itemId: widget.itemId!,
                                  ),
                                );
                              },
                            );

                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(EReviewYourOrderWidget.routeName);
                          },
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
          Container(
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiary,
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}
