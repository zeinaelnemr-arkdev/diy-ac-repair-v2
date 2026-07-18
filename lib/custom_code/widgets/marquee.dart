// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:marqueer/marqueer.dart';

class Marquee extends StatefulWidget {
  const Marquee({
    super.key,
    this.width,
    this.height,
    required this.imagesList,
    required this.speed,
    required this.autoStart,
    required this.direction,
    required this.itemSpacing,
    required this.startSpacing,
    required this.endSpacing,
  });

  final double? width;
  final double? height;
  final List<String> imagesList;
  final double speed;
  final bool autoStart;
  final String direction;
  final double itemSpacing;
  final double startSpacing;
  final double endSpacing;

  @override
  State<Marquee> createState() => _MarqueeState();
}

class _MarqueeState extends State<Marquee> {
  final controller = MarqueerController();

  @override
  Widget build(BuildContext context) {
    // Up = Bottom to Top, Down = Top to Bottom, Right = Left to Right, Else = Right to Left

    if (widget.direction == 'Up') {
      return Container(
        height: widget.height,
        width: widget.width,
        child: Marqueer.builder(
          pps: widget.speed,
          direction: MarqueerDirection.ttb,
          autoStart: widget.autoStart,
          separatorBuilder: (_, index) => Container(
            height: widget.itemSpacing,
          ),
          itemBuilder: (context, index) {
            var multiplier = index ~/ widget.imagesList.length;

            var i = index;

            if (multiplier > 0) {
              i = index - (multiplier * widget.imagesList.length);
            }

            final item = widget.imagesList[i];

            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0, widget.startSpacing, 0, widget.endSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "${item}",
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    if (widget.direction == 'Down') {
      return Container(
        height: widget.height,
        width: widget.width,
        child: Marqueer.builder(
          pps: widget.speed,
          direction: MarqueerDirection.btt,
          autoStart: widget.autoStart,
          separatorBuilder: (_, index) => Container(
            height: widget.itemSpacing,
          ),
          itemBuilder: (context, index) {
            var multiplier = index ~/ widget.imagesList.length;

            var i = index;

            if (multiplier > 0) {
              i = index - (multiplier * widget.imagesList.length);
            }

            final item = widget.imagesList[i];

            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0, widget.startSpacing, 0, widget.endSpacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "${item}",
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    if (widget.direction == 'Right') {
      return Container(
        height: widget.height,
        width: widget.width,
        child: Marqueer.builder(
          pps: widget.speed,
          direction: MarqueerDirection.ltr,
          autoStart: widget.autoStart,
          separatorBuilder: (_, index) => Container(
            width: widget.itemSpacing,
          ),
          itemBuilder: (context, index) {
            var multiplier = index ~/ widget.imagesList.length;

            var i = index;

            if (multiplier > 0) {
              i = index - (multiplier * widget.imagesList.length);
            }

            final item = widget.imagesList[i];

            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  widget.startSpacing, 0, widget.endSpacing, 0),
              child: Row(
                children: [
                  Image.network(
                    "${item}",
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else {
      return Container(
        height: widget.height,
        width: widget.width,
        child: Marqueer.builder(
          pps: widget.speed,
          direction: MarqueerDirection.rtl,
          autoStart: widget.autoStart,
          separatorBuilder: (_, index) => Container(
            width: widget.itemSpacing,
          ),
          itemBuilder: (context, index) {
            var multiplier = index ~/ widget.imagesList.length;

            var i = index;

            if (multiplier > 0) {
              i = index - (multiplier * widget.imagesList.length);
            }

            final item = widget.imagesList[i];

            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  widget.startSpacing, 0, widget.endSpacing, 0),
              child: Row(
                children: [
                  Image.network(
                    "${item}",
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            );
          },
        ),
      );
    }
  }
}
