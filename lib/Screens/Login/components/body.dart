import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/Screens/Login/components/background.dart';
import 'package:my_app/Screens/SignUp/signup_screen.dart';
import 'package:my_app/components/TextFileContainer.dart';
import 'package:my_app/components/already_have_an_account_check.dart';
import 'package:my_app/components/rounded_button.dart';
import 'package:my_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login'.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset("assets/icons/login.svg", height: size.height * 0.3),
          SizedBox(height: size.height * 0.03),
          const TextFileContainer(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Your email',
                  icon: Icon(
                    Icons.person,
                    color: kPrimary,
                  ),
                  border: InputBorder.none),
            ),
          ),
          const TextFileContainer(
              child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Your password',
                suffixIcon: Icon(
                  Icons.visibility,
                  color: kPrimary,
                ),
                icon: Icon(
                  Icons.lock,
                  color: kPrimary,
                ),
                border: InputBorder.none),
          )),
          SizedBox(height: size.height * 0.01),
          RoundedButton(text: 'Login', press: () {}),
          SizedBox(height: size.height * 0.01),
          AlreadyHaveAnAccountCheck(press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SignUpScreen();
            }));
          })
        ],
      ),
    ));
  }
}
