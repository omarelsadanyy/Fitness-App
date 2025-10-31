import 'package:flutter/material.dart';

class TransparentRoute<T> extends PageRouteBuilder<T> {
  final WidgetBuilder builder;

  TransparentRoute({required this.builder})
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => builder(context),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
    transitionDuration: const Duration(milliseconds: 300),
    opaque: false,
    barrierColor: const Color.fromARGB(177, 0, 0, 0),
  );
}