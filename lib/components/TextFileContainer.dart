
import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class TextFileContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  const TextFileContainer({
    required this.child,
    super.key,
    this.color = kPrimaryLightColor
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}