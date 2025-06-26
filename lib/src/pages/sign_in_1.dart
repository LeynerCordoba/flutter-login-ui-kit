import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/social_button.dart';

class SignInOne extends StatelessWidget {
  const SignInOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //logo section
                logo(size.height / 8, size.height / 8),
                SizedBox(
                  height: size.height * 0.03,
                ),
                richText(24),
                SizedBox(
                  height: size.height * 0.03,
                ),

                //email & password section
                emailTextField(size),
                SizedBox(
                  height: size.height * 0.02,
                ),
                passwordTextField(size),
                SizedBox(
                  height: size.height * 0.03,
                ),

                //sign in button & sign in with text
                signInButton(size),
                SizedBox(
                  height: size.height * 0.02,
                ),
                signInWithText(),
                SizedBox(
                  height: size.height * 0.02,
                ),

                //sign in with google & apple
                // signInGoogleButton(size),
                SignInOneSocialButton(
                  iconPath: 'assets/apple_logo.svg',
                  text: 'Sign in with Apple',
                  size: size,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SignInOneSocialButton(
                  iconPath: 'assets/google_logo.svg',
                  text: 'Sign in with Google',
                  size: size,
                ),
                // signInAppleButton(size),
                SizedBox(
                  height: size.height * 0.03,
                ),

                //sign up text here
                Center(
                  child: footerText(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget logo(double height_, double width_) {
    return SvgPicture.asset(
      'assets/logo.svg',
      height: height_,
      width: width_,
    );
  }

  Widget richText(double fontSize) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'LOGIN ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'PAGES \nUI ',
            style: TextStyle(
              color: Color(0xFFFE9879),
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'KIT',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget emailTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: const TextField(
        maxLines: 1,
        cursorColor: Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Email/ Phone number', border: InputBorder.none),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: const TextField(
        maxLines: 1,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Color(0xFF15224F),
        decoration:
            InputDecoration(labelText: 'Password', border: InputBorder.none),
      ),
    );
  }

  Widget signInButton(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: const Color(0xFF21899C),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4C2E84).withOpacity(0.2),
            offset: const Offset(0, 15.0),
            blurRadius: 60.0,
          ),
        ],
      ),
      child: const Text(
        'Sign in',
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget signInWithText() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Divider()),
        SizedBox(
          width: 16,
        ),
        Text(
          'Or Sign in with',
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(child: Divider()),
      ],
    );
  }

  //sign up text here
  Widget footerText() {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have an account ?',
          ),
          TextSpan(
            text: ' ',
            style: TextStyle(
              color: Color(0xFF21899C),
            ),
          ),
          TextSpan(
            text: 'Sign up',
            style: TextStyle(
              color: Color(0xFF21899C),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
