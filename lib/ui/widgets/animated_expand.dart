import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';

class AnimatedExpand extends StatefulWidget {
  final Widget child;
  final bool expand;
  final Duration? duration;

  const AnimatedExpand({
    required this.child,
    this.duration,
    this.expand = false,
  });

  @override
  _AnimatedExpandState createState() => _AnimatedExpandState();
}

class _AnimatedExpandState extends State<AnimatedExpand> with SingleTickerProviderStateMixin {
  late final AnimationController expandController;
  late final Animation<double> animation;

  late final bool initialState = widget.expand;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    if (widget.expand) {
      expandController.forward();
    }
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
      vsync: this,
      duration: widget.duration ?? AppConstants.animation.defaultDuration,
    );
    final Animation<double> curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.easeInOut,
    );
    animation = Tween(
      begin: initialState ? 1.0 : 0.0,
      end: 1.0,
    ).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(AnimatedExpand oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
