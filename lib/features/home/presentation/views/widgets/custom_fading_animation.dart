import 'package:flutter/material.dart';

class CustomFadingAnimation extends StatefulWidget {
  final Widget child;

  const CustomFadingAnimation({super.key, required this.child});

  @override
  State<CustomFadingAnimation> createState() => _CustomFadingAnimationState();
}

class _CustomFadingAnimationState extends State<CustomFadingAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation =
        Tween<double>(begin: 0.3, end: 0.8).animate(animationController);

    animationController.addListener(() {
      if(mounted) {
        setState(() {});
      }
    });
    animationController.repeat(reverse: true, period: Duration(seconds: 3));
  }
  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: animation.value, child: widget.child);
  }
}
