import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedContainerApp());
}

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  final double _width = 50;
  final double _height = 50;
  final Color _color = Colors.green;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: _width,
      height: _height,
      decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}

// ignore this, this is use for test

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
