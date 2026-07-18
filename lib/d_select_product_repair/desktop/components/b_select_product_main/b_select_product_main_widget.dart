import '/backend/schema/structs/index.dart';
import '/d_select_product_repair/desktop/components/components/button/button_widget.dart';
import '/d_select_product_repair/desktop/components/components/motor_card/motor_card_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b_select_product_main_model.dart';
export 'b_select_product_main_model.dart';

class BSelectProductMainWidget extends StatefulWidget {
  const BSelectProductMainWidget({
    super.key,
    String? partParams,
    int? count,
    this.partList,
    this.all,
  })  : this.partParams = partParams ?? 'MOTOR',
        this.count = count ?? 0;

  final String partParams;
  final int count;
  final List<PartCardDTOStruct>? partList;
  final bool? all;

  @override
  State<BSelectProductMainWidget> createState() =>
      _BSelectProductMainWidgetState();
}

class _BSelectProductMainWidgetState extends State<BSelectProductMainWidget> {
  late BSelectProductMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BSelectProductMainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: !widget.all! ? 'ALL ' : 'RECOMMENDED ',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.archivoBlack(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                      ),
                      TextSpan(
                        text: widget.partParams,
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: ' (',
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: widget.count.toString(),
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: ')',
                        style: TextStyle(),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.archivoBlack(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                ),
                if (false)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'SORT BY:',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelSmallFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.1,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelSmallIsCustom,
                            ),
                      ),
                      Container(
                        width: 160.0,
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropdownValueController ??=
                              FormFieldController<String>(
                            _model.dropdownValue ??= 'BEST MATCH',
                          ),
                          options: [
                            'BEST MATCH',
                            'PRICE: LOW TO HIGH',
                            'PRICE: HIGH TO LOW'
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropdownValue = val),
                          width: 200.0,
                          height: 40.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                lineHeight: 1.5,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          hintText: 'BEST MATCH',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 1.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            child: Builder(
              builder: (context) {
                final list = widget.partList
                        ?.sortedList(keyOf: (e) => e.title, desc: false)
                        .toList() ??
                    [];

                return Wrap(
                  spacing: 16.0,
                  runSpacing: 6.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: List.generate(list.length, (listIndex) {
                    final listItem = list[listIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: MotorCardWidget(
                        key: Key('Keydo5_${listIndex}_of_${list.length}'),
                        img: listItem.image.firstOrNull,
                        price: listItem.price,
                        status: 'IN STOCK',
                        subtitle: listItem.desc,
                        title: listItem.title,
                        topRated: false,
                        type: listItem.type,
                        itemId: listItem.id!,
                        motorData: listItem.motorCard,
                        capacitorCard: listItem.capacitorCard,
                        contactorCard: listItem.contactorCard,
                      ),
                    );
                  }),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              borderRadius: BorderRadius.circular(4.0),
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Container(
                child: Row(
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
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(2.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 0.5,
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.verified_rounded,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 28.0,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GUARANTEED FIT',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.4,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                            Text(
                              'We verify compatibility before shipping.',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .background70,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodySmallIsCustom,
                                  ),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.0,
                          child: wrapWithModel(
                            model: _model.buttonModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: ButtonWidget(
                              content: 'VIEW FULL SPECS',
                              iconPesent: false,
                              iconEndPresent: false,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              bg: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              variant: 'outline',
                              size: 'medium',
                              fullWidth: false,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: wrapWithModel(
                            model: _model.buttonModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: ButtonWidget(
                              content: 'ADD TO PROJECT',
                              iconPesent: false,
                              iconEndPresent: false,
                              color: FlutterFlowTheme.of(context).primaryText,
                              bg: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              variant: 'primary',
                              size: 'medium',
                              fullWidth: false,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 24.0)),
      ),
    );
  }
}
