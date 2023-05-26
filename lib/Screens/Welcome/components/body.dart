import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/Screens/Login/login_screen.dart';
import 'package:my_app/Screens/Welcome/components/background.dart';
import 'package:my_app/components/rounded_button.dart';
import 'package:my_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to you'.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              RoundedButton(
                text: 'Login',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                color: kPrimary,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                text: 'SignUp',
                press: () {},
                color: kPrimaryLightColor,
                textColor: Colors.black,
              )
            ]),
      ),
    );
  }
}
