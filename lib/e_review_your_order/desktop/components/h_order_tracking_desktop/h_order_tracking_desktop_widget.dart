import '/backend/backend.dart';
import '/components/button40_widget.dart';
import '/components/order_item_row3_widget.dart';
import '/components/tracking_step_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'h_order_tracking_desktop_model.dart';
export 'h_order_tracking_desktop_model.dart';

class HOrderTrackingDesktopWidget extends StatefulWidget {
  const HOrderTrackingDesktopWidget({
    super.key,
    required this.orderPram,
  });

  final OrdersRecord? orderPram;

  @override
  State<HOrderTrackingDesktopWidget> createState() =>
      _HOrderTrackingDesktopWidgetState();
}

class _HOrderTrackingDesktopWidgetState
    extends State<HOrderTrackingDesktopWidget> {
  late HOrderTrackingDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HOrderTrackingDesktopModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.orderDCS = widget.orderPram;
      safeSetState(() {});
    });

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
      padding: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 60.0, 0.0),
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Tracking',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        lineHeight: 1.1,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .displaySmallIsCustom,
                                      ),
                                ),
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Placed on ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              lineHeight: 1.5,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                      TextSpan(
                                        text: dateTimeFormat("yMMMd",
                                            _model.orderDCS!.createdAt!),
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: ' • ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: 'Last Updated on ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: dateTimeFormat("yMMMd",
                                            _model.orderDCS!.updatedAt!),
                                        style: TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.5,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(KContactWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.buttonModel,
                                updateCallback: () => safeSetState(() {}),
                                child: Button40Widget(
                                  content: 'Support Center',
                                  icon: Icon(
                                    Icons.help_outline_rounded,
                                    color: Colors.white,
                                    size: 16.0,
                                  ),
                                  iconPresent: true,
                                  iconEndPresent: false,
                                  variant: 'primary',
                                  size: 'large',
                                  fullWidth: false,
                                  loading: false,
                                  disabled: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (false)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'SHIPPING PROGRESS',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    lineHeight: 1.2,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallIsCustom,
                                                  ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.trackingStepModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TrackingStepWidget(
                                                    icon: Icon(
                                                      Icons.check_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 20.0,
                                                    ),
                                                    status: 'COMPLETED',
                                                    subtitle:
                                                        'Oct 24, 10:30 AM',
                                                    title: 'Order Submitted',
                                                    desc:
                                                        'Order verified and processed for fulfillment.',
                                                    last: false,
                                                    active: true,
                                                    completed: true,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.trackingStepModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TrackingStepWidget(
                                                    icon: Icon(
                                                      Icons
                                                          .local_shipping_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 20.0,
                                                    ),
                                                    status: 'IN PROGRESS',
                                                    subtitle: 'Oct 25, 2:00 PM',
                                                    title: 'Shipped',
                                                    desc:
                                                        'Left sorting facility. Tracking: 1Z999AA1012345678',
                                                    last: false,
                                                    active: true,
                                                    completed: true,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.trackingStepModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TrackingStepWidget(
                                                    icon: Icon(
                                                      Icons.inventory_2_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 20.0,
                                                    ),
                                                    status: 'PENDING',
                                                    subtitle:
                                                        'Estimated: Oct 27, 2023',
                                                    title: 'Delivered',
                                                    desc: '',
                                                    last: false,
                                                    active: true,
                                                    completed: true,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.trackingStepModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TrackingStepWidget(
                                                    icon: Icon(
                                                      Icons.history_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 20.0,
                                                    ),
                                                    status: 'LOCKED',
                                                    subtitle:
                                                        'Becomes available after delivery',
                                                    title: 'Return Window',
                                                    desc: '',
                                                    last: true,
                                                    active: true,
                                                    completed: true,
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 0.0)),
                                            ),
                                          ].divide(SizedBox(height: 32.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(24.0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'ITEMS IN THIS ORDER (',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.2,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        valueOrDefault<String>(
                                                      _model.orderDCS?.lines
                                                          .length
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: TextStyle(),
                                                  ),
                                                  TextSpan(
                                                    text: ')',
                                                    style: TextStyle(),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.2,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 247.6,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final items =
                                            _model.orderDCS?.lines.toList() ??
                                                [];

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(items.length,
                                              (itemsIndex) {
                                            final itemsItem = items[itemsIndex];
                                            return OrderItemRow3Widget(
                                              key: Key(
                                                  'Keygrz_${itemsIndex}_of_${items.length}'),
                                              guide: false,
                                              imgDesc: '',
                                              name: itemsItem.title,
                                              price: itemsItem.unitPrice
                                                  .toString(),
                                              sku:
                                                  '${itemsItem.lineId} | ${itemsItem.returnPolicySnapshot.returnable ? 'Returnable | ' : ''}${itemsItem.specType} | ${itemsItem.qty.toString()}',
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                    if (false)
                                      wrapWithModel(
                                        model: _model.orderItemRowModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: OrderItemRow3Widget(
                                          guide: true,
                                          imgDesc:
                                              'https://dimg.dreamflow.cloud/v1/image/electrical%20contactor%20part',
                                          name: 'Heavy Duty Magnetic Contactor',
                                          price: '\$29.99',
                                          sku: 'AC-CON-2PL-30',
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.location_on_rounded,
                                              size: 18.0,
                                            ),
                                            Text(
                                              'SHIPPING ADDRESS',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.2,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmallIsCustom,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            _model.orderDCS?.customerSnap
                                                .shippingAddress,
                                            'Frosty Valley, TX 75001',
                                          ),
                                          maxLines: 4,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.5,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          overflow: TextOverflow.visible,
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'ORDER SUMMARY',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.2,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Subtotal',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.5,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                                Text(
                                                  '\$${valueOrDefault<String>(
                                                    _model.orderDCS?.totalsSnap
                                                        .subtotal
                                                        .toString(),
                                                    '74.99',
                                                  )}',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.5,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Shipping',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.5,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                                Text(
                                                  '\$${valueOrDefault<String>(
                                                    _model.orderDCS?.totalsSnap
                                                        .shipping
                                                        .toString(),
                                                    '74.99',
                                                  )}',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: Colors.black,
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.5,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Tax',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.5,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                                Text(
                                                  '\$${valueOrDefault<String>(
                                                    _model.orderDCS?.totalsSnap
                                                        .tax
                                                        .toString(),
                                                    '74.99',
                                                  )}',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.5,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                        Divider(
                                          height: 16.0,
                                          thickness: 1.0,
                                          indent: 0.0,
                                          endIndent: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Total',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily,
                                                    fontSize: 28.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    lineHeight: 1.2,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeIsCustom,
                                                  ),
                                            ),
                                            Text(
                                              '\$${valueOrDefault<String>(
                                                _model
                                                    .orderDCS?.totalsSnap.total
                                                    .toString(),
                                                '74.99',
                                              )}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    lineHeight: 1.2,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeIsCustom,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 16.0,
                                          thickness: 1.0,
                                          indent: 0.0,
                                          endIndent: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.credit_card_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            Text(
                                              'Paid using PIN ${valueOrDefault<String>(
                                                _model.orderDCS?.customerSnap
                                                    .pin,
                                                '74.99',
                                              )}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    letterSpacing: 0.0,
                                                    lineHeight: 1.5,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmallIsCustom,
                                                  ),
                                            ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'NEED INSTALLATION HELP?',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.2,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                        Text(
                                          'Every part comes with a step-by-step video guide specifically for your AC model.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.5,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmallIsCustom,
                                              ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                CLibraryVideoFlowWidget
                                                    .routeName);
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Browse Video Guides',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeFamily,
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      lineHeight: 1.2,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeIsCustom,
                                                    ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_rounded,
                                                color: Colors.white,
                                                size: 16.0,
                                              ),
                                            ].divide(SizedBox(width: 4.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                  ].divide(SizedBox(height: 32.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
