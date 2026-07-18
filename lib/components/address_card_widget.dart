import '/components/button26_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'address_card_model.dart';
export 'address_card_model.dart';

class AddressCardWidget extends StatefulWidget {
  const AddressCardWidget({
    super.key,
    String? city,
    String? label,
    String? recipient,
    String? state,
    String? street,
    String? zip,
    bool? is_default,
  })  : this.city = city ?? 'San Francisco',
        this.label = label ?? 'Home',
        this.recipient = recipient ?? 'John Doe',
        this.state = state ?? 'CA',
        this.street = street ?? '123 Neo-Tokyo Blvd',
        this.zip = zip ?? '94105',
        this.is_default = is_default ?? true;

  final String city;
  final String label;
  final String recipient;
  final String state;
  final String street;
  final String zip;
  final bool is_default;

  @override
  State<AddressCardWidget> createState() => _AddressCardWidgetState();
}

class _AddressCardWidgetState extends State<AddressCardWidget> {
  late AddressCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressCardModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).grey20,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 2.0,
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 18.0,
                            height: 18.0,
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                if (widget.is_default ? true : false)
                                  Icon(
                                    Icons.push_pin_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18.0,
                                  ),
                                if (widget.is_default ? false : true)
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18.0,
                                  ),
                              ],
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.label,
                              'Home',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      if (valueOrDefault<bool>(
                        widget.is_default,
                        true,
                      ))
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(2.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Container(
                              child: Text(
                                'DEFAULT',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimary,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.2,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.recipient,
                          'John Doe',
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.street,
                          '123 Neo-Tokyo Blvd',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                      Text(
                        '${widget.city}, ${widget.state} ${widget.zip}',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Divider(
                    height: 16.0,
                    thickness: 1.0,
                    indent: 0.0,
                    endIndent: 0.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.buttonModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: Button26Widget(
                          content: 'Edit',
                          icon: Icon(
                            Icons.edit_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                          icon_present: true,
                          icon_end_present: false,
                          variant: 'outline',
                          size: 'small',
                          full_width: false,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.buttonModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: Button26Widget(
                          content: 'Delete',
                          icon: Icon(
                            Icons.delete_outline_rounded,
                            color: FlutterFlowTheme.of(context).onError,
                            size: 16.0,
                          ),
                          icon_present: true,
                          icon_end_present: false,
                          variant: 'destructive',
                          size: 'small',
                          full_width: false,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                      Spacer(),
                      if (widget.is_default ? false : true)
                        wrapWithModel(
                          model: _model.buttonModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: Button26Widget(
                            content: 'Set as Default',
                            icon_present: false,
                            icon_end_present: false,
                            variant: 'ghost',
                            size: 'small',
                            full_width: false,
                            loading: false,
                            disabled: false,
                          ),
                        ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
