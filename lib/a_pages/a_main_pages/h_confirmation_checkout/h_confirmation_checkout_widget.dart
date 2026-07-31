import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_checkout_details/g_confirmation_success/g_confirmation_success_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'h_confirmation_checkout_model.dart';
export 'h_confirmation_checkout_model.dart';

class HConfirmationCheckoutWidget extends StatefulWidget {
  const HConfirmationCheckoutWidget({
    super.key,
    required this.orderId,
  });

  final DocumentReference? orderId;

  static String routeName = 'H-Confirmation_Checkout';
  static String routePath = '/confirme-order';

  @override
  State<HConfirmationCheckoutWidget> createState() =>
      _HConfirmationCheckoutWidgetState();
}

class _HConfirmationCheckoutWidgetState
    extends State<HConfirmationCheckoutWidget> {
  late HConfirmationCheckoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HConfirmationCheckoutModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.orderAct = await OrdersRecord.getDocumentOnce(widget.orderId!);
      _model.paymentJson = await PaymentsGroup.getPaymentByIdCall.call(
        paymentIntentId: _model.orderAct?.payment.paymentIntentId,
      );

      if ((_model.paymentJson?.succeeded ?? true)) {
        if (PaymentsGroup.getPaymentByIdCall.status(
              (_model.paymentJson?.jsonBody ?? ''),
            ) ==
            PaymentStatus.succeeded.name) {
          await _model.orderAct!.reference.update(createOrdersRecordData(
            payment: createPaymentDataStruct(
              paymentIntentId: PaymentsGroup.getPaymentByIdCall.paymentId(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              status: PaymentsGroup.getPaymentByIdCall.status(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              currency: PaymentsGroup.getPaymentByIdCall.currency(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              amountTotal: PaymentsGroup.getPaymentByIdCall
                      .amount(
                        (_model.paymentJson?.jsonBody ?? ''),
                      )!
                      .round() /
                  100,
              paidAt: dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                PaymentsGroup.getPaymentByIdCall.paidAt(
                  (_model.paymentJson?.jsonBody ?? ''),
                ),
                0000000000,
              )),
              clearUnsetFields: false,
            ),
            status: OrderStatus.paid,
            updatedAt: getCurrentTimestamp,
          ));
          FFAppState().Cart = CartStruct();
          _model.orderUpdatedAct =
              await OrdersRecord.getDocumentOnce(_model.orderAct!.reference);
          _model.order = _model.orderUpdatedAct;
          safeSetState(() {});
          _model.email = await actions.buildOrderEmailHtml(
            _model.orderUpdatedAct?.customerSnap.name,
            _model.orderUpdatedAct?.customerSnap.shippingAddress,
            _model.orderUpdatedAct?.customerSnap.phone,
            _model.orderUpdatedAct!.totalsSnap.subtotal,
            _model.orderUpdatedAct!.totalsSnap.shipping,
            _model.orderUpdatedAct!.totalsSnap.tax,
            _model.orderUpdatedAct!.totalsSnap.total,
            FFAppState().Cart.cartItems.toList(),
          );

          await MailRecord.collection.doc().set(createMailRecordData(
                to: _model.orderUpdatedAct?.customerSnap.email,
                message: updateMessageStruct(
                  MessageStruct(
                    subject: 'Order Confirmed – DIY AC Repair',
                    html: _model.email,
                  ),
                  clearUnsetFields: false,
                  create: true,
                ),
              ));
        } else {
          await _model.orderAct!.reference.update(createOrdersRecordData(
            payment: createPaymentDataStruct(
              paymentIntentId: PaymentsGroup.getPaymentByIdCall.paymentId(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              status: PaymentsGroup.getPaymentByIdCall.status(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              currency: PaymentsGroup.getPaymentByIdCall.currency(
                (_model.paymentJson?.jsonBody ?? ''),
              ),
              amountTotal: PaymentsGroup.getPaymentByIdCall
                      .amount(
                        (_model.paymentJson?.jsonBody ?? ''),
                      )!
                      .round() /
                  100,
              clearUnsetFields: false,
            ),
            updatedAt: getCurrentTimestamp,
          ));
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 2000.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.s01NavigatioBarModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: S01NavigatioBarWidget(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    if (_model.order?.reference != null)
                                      wrapWithModel(
                                        model: _model.gConfirmationSuccessModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: GConfirmationSuccessWidget(
                                          order: _model.order!,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                              ))
                                wrapWithModel(
                                  model: _model.s12FooterModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: S12FooterWidget(),
                                ),
                            ].divide(SizedBox(
                                height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
                  .addToStart(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  )))
                  .addToEnd(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  ))),
            ),
          ),
        ),
      ),
    );
  }
}
