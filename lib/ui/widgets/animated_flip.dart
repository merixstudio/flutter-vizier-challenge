import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';

class AnimatedFlip extends StatefulWidget {
  const AnimatedFlip({
    required this.back,
    required this.front,
    required this.isFront,
    super.key,
  });

  final Widget back;
  final Widget front;
  final bool isFront;

  @override
  State<AnimatedFlip> createState() => _AnimatedFlipState();
}

class _AnimatedFlipState extends State<AnimatedFlip>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: AppConstants.animation.defaultDuration * 3,
    vsync: this,
  );
  late final Animation<double> _rotate;

  @override
  void didUpdateWidget(covariant AnimatedFlip oldWidget) {
    if (oldWidget.isFront != widget.isFront) {
      setState(() {
        widget.isFront ? _controller.reverse() : _controller.forward();
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    _rotate = TweenSequence([
      TweenSequenceItem(
        tween: Tween(
          begin: 0.0,
          end: -0.05,
        ),
        weight: 0.1,
      ),
      TweenSequenceItem(
        tween: Tween(
          begin: -0.05,
          end: 1.05,
        ).chain(
          CurveTween(
            curve: Curves.easeInOut,
          ),
        ),
        weight: 0.8,
      ),
      TweenSequenceItem(
        tween: Tween(
          begin: 1.05,
          end: 1.0,
        ),
        weight: 0.1,
      ),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _rotate,
      builder: (_, __) => Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.0010)
          ..rotateY(_rotate.value * pi),
        child: _rotate.value <= 0.5
            ? widget.front
            : Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(pi),
                child: widget.back,
              ),
      ),
    );
  }
}
