import 'package:flutter/material.dart';

class Expansible extends StatefulWidget {
  final Widget child;
  final bool isExpanded;
  final Duration duration;

  const Expansible({
    required this.child,
    required this.isExpanded,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  _ExpansibleState createState() => _ExpansibleState();
}

class _ExpansibleState extends State<Expansible>
    with SingleTickerProviderStateMixin<Expansible> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: widget.duration,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: widget.isExpanded ? double.infinity : 0,
        ),
        child: widget.child,
      ),
    );
  }
}

class ExpansibleWithOpacity extends StatefulWidget {
  final bool isExpanded;
  final Widget child;
  final Curve curve;
  final double expandedHeight;

  final Duration duration;
  final Duration durationOpacity;

  const ExpansibleWithOpacity({
    required this.child,
    required this.isExpanded,
    this.expandedHeight = double.infinity,
    this.duration = const Duration(milliseconds: 300),
    this.durationOpacity = const Duration(milliseconds: 300),
    this.curve = Curves.fastOutSlowIn,
  });

  @override
  _ExpansibleWithOpacityState createState() => _ExpansibleWithOpacityState();
}

class _ExpansibleWithOpacityState extends State<ExpansibleWithOpacity>
    with SingleTickerProviderStateMixin<ExpansibleWithOpacity> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: widget.duration,
      curve: widget.curve,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: widget.isExpanded ? widget.expandedHeight : 0,
        ),
        child: AnimatedOpacity(
          opacity: widget.isExpanded ? 1 : 1,
          duration: widget.durationOpacity,
          curve: widget.curve,
          child: widget.child,
        ),
      ),
    );
  }
}
