import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

import '../screen_controller.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _signIn = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned(
            top: -300,
            right: -200,
            child: Container(
              height: 800,
              width: 800,
              decoration: const BoxDecoration(
                color: bgGrey,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _signIn ? 'SIGN IN' : 'SIGN UP',
                  style: textStyle.copyWith(
                    fontSize: 32,
                    color: subColor,
                    letterSpacing: 0.7,
                  ),
                ),
                const SizedBox(height: 38),
                if (!_signIn)
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Username'),
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                if (!_signIn) const SizedBox(height: 12),
                if (!_signIn)
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Name'),
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                if (!_signIn) const SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Email'),
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: _signIn ? 28 : 12),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Password'),
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                if (!_signIn) const SizedBox(height: 12),
                if (!_signIn)
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Confirm Password'),
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: GradientButton(
                    onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const ScreenController(),
                      ),
                    ),
                    label: _signIn ? 'Sign In' : 'Sign Up',
                  ),
                ),
                const SizedBox(height: 4),
                if (_signIn)
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: textStyle.copyWith(
                        letterSpacing: 0.7,
                        // color: bgGrey,
                      ),
                    ),
                  ),
                TextButton(
                  onPressed: () => setState(() => _signIn = !_signIn),
                  child: Text(
                    _signIn ? 'New user? Sign Up!' : 'Existing User? Sign In!',
                    style: textStyle.copyWith(
                      color: bgGrey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // InputDecoration inputDecoration(String hintText) => InputDecoration(
  //       filled: true,
  //       fillColor: navGrey,
  //       border: null,
  //       focusedBorder: null,
  //       enabledBorder: null,
  //       hintText: hintText,
  //       hintStyle: textStyle.copyWith(
  //         color: primaryColor,
  //         fontWeight: FontWeight.w400,
  //         fontSize: 20,
  //       ),
  //     );
}
