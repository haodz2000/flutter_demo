import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/Screens/Login/login_screen.dart';
import 'package:my_app/Screens/SignUp/components/background.dart';
import 'package:my_app/components/TextFileContainer.dart';
import 'package:my_app/components/already_have_an_account_check.dart';
import 'package:my_app/components/or_divider.dart';
import 'package:my_app/components/rounded_button.dart';
import 'package:my_app/components/social.dart';
import 'package:my_app/constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
          const Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset("assets/icons/signup.svg"),
          const TextFileContainer(
              child: TextField(
            decoration: InputDecoration(
              hintText: "Your Email",
              icon: Icon(
                Icons.person,
                color: kPrimary,
              ),
              border: InputBorder.none,
            ),
          )),
          const TextFileContainer(
              child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Your Password",
              icon: Icon(
                Icons.lock,
                color: kPrimary,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimary,
              ),
              border: InputBorder.none,
            ),
          )),
          RoundedButton(text: 'Sign In', press: () {}),
          SizedBox(
            height: size.height * 0.01,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return const LoginScreen();
              }));
            },
            login: false,
          ),
          const OrDivider(),
          const Social()
              ],
            ),
        ));
  }
}


