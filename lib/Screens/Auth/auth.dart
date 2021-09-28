import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trading_dynamic/Providers/user_provider.dart';
import 'package:trading_dynamic/Screens/Auth/forgot_password_screen.dart';
import 'package:trading_dynamic/Screens/Auth/otp_screen.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/error_modal.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';
import 'package:http/http.dart';

import '../../sizeconfig.dart';
import '../screen_controller.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _signIn = true;
  bool _loading = false;

  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _referralCodeController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _referralCodeController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _referralCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned(
            top: -300,
            right: -200,
            child: Container(
              height: getRelativeHeight(1.14),
              width: getRelativeHeight(1.14),
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
                // SizedBox(height: _signIn ? 200 : 35),
                Text(
                  _signIn ? 'SIGN IN' : 'SIGN UP',
                  style: textStyle.copyWith(
                    fontSize: 32,
                    color: subColor,
                    letterSpacing: 0.7,
                  ),
                ),
                const SizedBox(height: 38),
                // if (!_signIn) const SizedBox(height: 12),
                if (!_signIn)
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(hintText: 'Name'),
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                if (!_signIn) const SizedBox(height: 12),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(hintText: 'Email'),
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                if (!_signIn) const SizedBox(height: 12),
                if (!_signIn)
                  TextFormField(
                    controller: _phoneNumberController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(hintText: 'Phone number'),
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                SizedBox(height: _signIn ? 28 : 12),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(' '),
                  ],
                  decoration: const InputDecoration(hintText: 'Password'),
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                if (!_signIn) const SizedBox(height: 12),
                if (!_signIn)
                  TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(' '),
                    ],
                    decoration:
                        const InputDecoration(hintText: 'Confirm Password'),
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                if (!_signIn) const SizedBox(height: 12),
                if (!_signIn)
                  TextFormField(
                    controller: _referralCodeController,
                    decoration:
                        const InputDecoration(hintText: 'Referral code'),
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: _loading
                      ? const CircularProgressIndicator(color: yellowGold)
                      : GradientButton(
                          onTap: () async {
                            setState(() {
                              _loading = true;
                            });
                            if (_signIn) {
                              await onSignIn();
                            } else {
                              await onSignUp();
                            }
                            setState(() {
                              _loading = false;
                            });
                          },
                          label: _signIn ? 'Sign In' : 'Sign Up',
                        ),
                ),
                const SizedBox(height: 4),
                if (_signIn)
                  TextButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ),
                    ),
                    child: Text(
                      'Forgot Password?',
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

  Future<void> onSignUp() async {
    FocusScope.of(context).unfocus();
    String _name = _nameController.text.trim();
    String _email = _emailController.text.trim();
    String _phoneNumber = _phoneNumberController.text.trim();
    String _password = _passwordController.text.trim();
    String _confirmPassword = _confirmPasswordController.text.trim();
    String _referral = _referralCodeController.text.trim();

    if (_name.length < 3) {
      errorModal(context, 'Name can not be less than 3 characters!');
      return;
    } else if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_email) ||
        _email.isEmpty) {
      errorModal(context, 'Invalid Email!');
      return;
    } else if (_phoneNumber.length < 10) {
      errorModal(context, 'Phone Numbers can not less than 10 digits!');
      return;
    } else if (_password.length < 6) {
      errorModal(context, 'Password can not be less than 6 characters!');
      return;
    } else if (_password != _confirmPassword) {
      errorModal(context, 'Passwords does not match!');
      return;
    }
    Uri url = Uri.parse('http://7ac0-94-237-73-96.ngrok.io/api/user');

    String data = json.encode({
      "name": _name,
      "email": _email,
      "phone_number": _phoneNumber,
      "password": _password,
      "referral_code": _referral,
    });

    Response response = await post(url, body: data);
    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      setState(() {
        _signIn = true;
      });
    }
  }

  Future<void> onSignIn() async {
    FocusScope.of(context).unfocus();
    String _email = _emailController.text.trim();
    String _password = _passwordController.text.trim();

    if (_email.isEmpty || _password.isEmpty) {
      errorModal(context, 'Fields can not be empty!');
      return;
    }

    Uri url = Uri.parse('http://7ac0-94-237-73-96.ngrok.io/api/login');

    Response response = await get(
      url,
      headers: {
        'email': _email,
        'password': _password,
      },
    );

    if (response.statusCode == 200) {
      UserProvider().userToken = json.decode(response.body)['token'];
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ScreenController(),
        ),
      );
    } else {
      errorModal(context, 'Something went wrong! Try again later.');
    }
  }
}
