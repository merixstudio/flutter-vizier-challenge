import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({
    required this.text,
    this.style,
    super.key,
  });

  final String text;
  final TextStyle? style;

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: AppConstants.animation.defaultDuration,
    vsync: this,
  );

  late final Animation<double> _opacity;
  late String _oldText;

  double _previousOpacityValue = 1.0;
  bool _showNewText = false;

  @override
  void didUpdateWidget(covariant AnimatedText oldWidget) {
    if (widget.text != oldWidget.text) {
      setState(() {
        _oldText = oldWidget.text;
        _previousOpacityValue = 1.0;
        _showNewText = false;
        _controller
          ..reset()
          ..forward();
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    _opacity = TweenSequence<double>(
      [
        TweenSequenceItem(
          tween: Tween<double>(
            begin: 1.0,
            end: 0.0,
          ),
          weight: 0.5,
        ),
        TweenSequenceItem(
          tween: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ),
          weight: 0.5,
        ),
      ],
    ).animate(_controller);
    _oldText = widget.text;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacity,
      builder: (_, __) {
        final double value = _opacity.value;
        if (_previousOpacityValue < value) {
          _showNewText = true;
        }
        _previousOpacityValue = value;
        return Opacity(
          opacity: value,
          child: Text(
            _showNewText ? widget.text : _oldText,
            style: widget.style,
          ),
        );
      },
    );
  }
}
