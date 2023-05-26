import 'package:flutter/material.dart';
import 'package:my_app/components/social_icon.dart';

class Social extends StatelessWidget {
  const Social({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          url: "assets/icons/facebook.svg", press: (){},
        ),
        SocialIcon(
          url: "assets/icons/twitter.svg",
          press: (){},
        ),
        SocialIcon(
          url: "assets/icons/google-plus.svg",
          press: (){},
        ),
      ],
    );
  }
}