import '/components/button2_widget.dart';
import '/components/dimension_input_widget.dart';
import '/components/spec_dropdown_widget.dart';
import '/d_select_product_repair/desktop/components/components/filter_category_item/filter_category_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 's18_copy_model.dart';
export 's18_copy_model.dart';

class S18CopyWidget extends StatefulWidget {
  const S18CopyWidget({super.key});

  @override
  State<S18CopyWidget> createState() => _S18CopyWidgetState();
}

class _S18CopyWidgetState extends State<S18CopyWidget> {
  late S18CopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S18CopyModel());

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
      width: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Container(
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFD6D6D6),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Container(
                                child: Text(
                                  'PARTS',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        lineHeight: 1.3,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.filterCategoryItemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterCategoryItemWidget(
                                icon: Icon(
                                  Icons.settings_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                label: 'MOTOR',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.filterCategoryItemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterCategoryItemWidget(
                                icon: Icon(
                                  Icons.build_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                label: 'CONTACTOR',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.filterCategoryItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterCategoryItemWidget(
                                icon: Icon(
                                  Icons.battery_charging_full_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                label: 'CAPACITOR',
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFD6D6D6),
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
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              child: Text(
                                'MOTOR SPECS',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                      lineHeight: 1.3,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: wrapWithModel(
                                    model: _model.specDropdownModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SpecDropdownWidget(
                                      label: 'Rated Volt:',
                                      options: '208/23,460,575',
                                      value: 0.0,
                                      width: 0.0,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: wrapWithModel(
                                    model: _model.specDropdownModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SpecDropdownWidget(
                                      label: 'Rated Amp:',
                                      options: '208/23,10,15,20',
                                      value: 0.0,
                                      width: 0.0,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: wrapWithModel(
                                    model: _model.specDropdownModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SpecDropdownWidget(
                                      label: 'Rated Volt:',
                                      options: '208/23,460,575',
                                      value: 0.0,
                                      width: 0.0,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: wrapWithModel(
                                    model: _model.specDropdownModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SpecDropdownWidget(
                                      label: 'Rated Amp:',
                                      options: '208/23,10,15,20',
                                      value: 0.0,
                                      width: 0.0,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dimensions:',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelLargeFamily,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.2,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelLargeIsCustom,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.dimensionInputModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: DimensionInputWidget(
                                      label: 'L',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.dimensionInputModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: DimensionInputWidget(
                                      label: 'W',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.dimensionInputModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: DimensionInputWidget(
                                      label: 'H',
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Container(
                            child: wrapWithModel(
                              model: _model.specDropdownModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: SpecDropdownWidget(
                                label: 'Part Number:',
                                options: '208/230,990-123,880-456',
                                value: 0.0,
                                width: 0.0,
                              ),
                            ),
                          ),
                          Container(
                            height: 24.0,
                          ),
                          wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Button2Widget(
                              content: 'FILTER',
                              icon_present: false,
                              icon_end_present: false,
                              variant: 'primary',
                              size: 'large',
                              full_width: true,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
