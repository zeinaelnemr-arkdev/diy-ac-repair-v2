import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'asterisk_model.dart';
export 'asterisk_model.dart';

class AsteriskWidget extends StatefulWidget {
  const AsteriskWidget({
    super.key,
    this.asteriskColor,
    double? maxWidth,
  }) : this.maxWidth = maxWidth ?? 60.0;

  final Color? asteriskColor;
  final double maxWidth;

  @override
  State<AsteriskWidget> createState() => _AsteriskWidgetState();
}

class _AsteriskWidgetState extends State<AsteriskWidget>
    with TickerProviderStateMixin {
  late AsteriskModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsteriskModel());

    animationsMap.addAll({
      'stackOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.05, 1.05),
          ),
        ],
      ),
      'stackOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 25000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: MouseRegion(
        opaque: false,
        cursor: MouseCursor.defer ?? MouseCursor.defer,
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.03,
              height: double.infinity,
              constraints: BoxConstraints(
                minWidth: 20.0,
                maxWidth: valueOrDefault<double>(
                  widget.maxWidth,
                  60.0,
                ),
              ),
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget.asteriskColor,
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
            Transform.rotate(
              angle: 135.0 * (math.pi / 180),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.03,
                height: double.infinity,
                constraints: BoxConstraints(
                  minWidth: 20.0,
                  maxWidth: valueOrDefault<double>(
                    widget.maxWidth,
                    60.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.asteriskColor,
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: 45.0 * (math.pi / 180),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.03,
                height: double.infinity,
                constraints: BoxConstraints(
                  minWidth: 20.0,
                  maxWidth: valueOrDefault<double>(
                    widget.maxWidth,
                    60.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.asteriskColor,
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: 90.0 * (math.pi / 180),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.03,
                height: double.infinity,
                constraints: BoxConstraints(
                  minWidth: 20.0,
                  maxWidth: valueOrDefault<double>(
                    widget.maxWidth,
                    60.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.asteriskColor,
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          ],
        )
            .animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!)
            .animateOnActionTrigger(
              animationsMap['stackOnActionTriggerAnimation']!,
            ),
        onEnter: ((event) async {
          safeSetState(() => _model.mouseRegionHovered = true);
          // Start Asterisk Animation
          if (animationsMap['stackOnActionTriggerAnimation'] != null) {
            await animationsMap['stackOnActionTriggerAnimation']!
                .controller
                .forward(from: 0.0);
          }
        }),
        onExit: ((event) async {
          safeSetState(() => _model.mouseRegionHovered = false);
          // Reset Asterisk Animation
          if (animationsMap['stackOnActionTriggerAnimation'] != null) {
            animationsMap['stackOnActionTriggerAnimation']!.controller.reset();
          }
        }),
      ),
    );
  }
}
