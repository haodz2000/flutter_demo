import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      child: const Row(children: <Widget>[
        BuildDivider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR",
            style: TextStyle(color: kPrimary, fontWeight: FontWeight.w600),
          ),
        ),
        BuildDivider()
      ]),
    );
  }
}

class BuildDivider extends StatelessWidget {
  const BuildDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Divider(
      color: Color(0xFFAC9494),
      height: 1.5,
    ));
  }
}
