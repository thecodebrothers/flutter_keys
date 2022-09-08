import 'dart:async';

import 'package:flutter/material.dart';

class SquareStateful extends StatefulWidget {
  const SquareStateful({
    Key? key,
    required this.milliseconds,
    required this.onDragCompleted,
    required this.progressColor,
  }) : super(key: key);

  final VoidCallback onDragCompleted;
  final int milliseconds;
  final Color progressColor;

  @override
  State<SquareStateful> createState() => _SquareStatefulState();
}

class _SquareStatefulState extends State<SquareStateful>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  double value = 0;
  late Color progressColor;

  @override
  void initState() {
    super.initState();
    progressColor = widget.progressColor;
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    Timer.periodic(Duration(milliseconds: widget.milliseconds), (timer) {
      if (!mounted) {
        return;
      }
      setState(() {
        value = value + 0.02;
        controller.value = value;
      });
    });
  }

  @override
  void dispose() {
    controller.stop();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Draggable(
      feedback: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: LinearProgressIndicator(
                  color: progressColor,
                  backgroundColor: Colors.white54,
                  value: value,
                  semanticsLabel: 'Linear progress indicator',
                ),
              ),
            ),
          ),
        ),
      ),
      childWhenDragging: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100,
          width: 100,
        ),
      ),
      onDragEnd: (x) {
        widget.onDragCompleted();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: LinearProgressIndicator(
                  color: progressColor,
                  backgroundColor: Colors.white54,
                  value: controller.value,
                  semanticsLabel: 'Linear progress indicator',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
