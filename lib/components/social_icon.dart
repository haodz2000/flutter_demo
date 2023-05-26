import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/constants.dart';

class SocialIcon extends StatelessWidget {
  final String url;
  final Color color;
  final Color borderColor;
  final Function? press;
  const SocialIcon(
      {super.key,
      this.url = "",
      this.color = kPrimary,
      this.borderColor = kPrimaryLightColor,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: borderColor),
          shape: BoxShape.circle),
      child: GestureDetector(
        onTap: press as void Function()?,
        child: SvgPicture.asset(
          url,
          height: 20,
          width: 20,
          color: color,
        ),
      ),
    );
  }
}
