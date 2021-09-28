import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:trading_dynamic/Screens/Auth/auth.dart';
import 'package:trading_dynamic/Screens/Auth/new_password.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/error_modal.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

import '../../sizeconfig.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool _loading = false;
  late TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
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
                Text(
                  'Password reset',
                  style: textStyle.copyWith(
                    fontSize: 32,
                    color: subColor,
                    letterSpacing: 0.7,
                  ),
                ),
                const SizedBox(height: 38),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email...',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: getRelativeWidht(.5),
                  child: _loading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: yellowGold,
                          ),
                        )
                      : GradientButton(
                          label: 'Submit',
                          onTap: () async {
                            setState(() {
                              _loading = true;
                            });
                            await onSubmit();
                            setState(() {
                              _loading = false;
                            });
                          },
                        ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AuthScreen(),
                  )),
                  child: Text(
                    'Sign In',
                    style: textStyle.copyWith(
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

  Future<void> onSubmit() async {
    FocusScope.of(context).unfocus();
    String email = _emailController.text.trim();
    Uri url = Uri.parse('http://7ac0-94-237-73-96.ngrok.io/api/reset_password');

    String data = json.encode({
      'email': email,
    });

    Response response = await post(url, body: data);

    if (response.statusCode == 200) {
      print('email sent >');
      AwesomeDialog(
        context: context,
        animType: AnimType.SCALE,
        dialogType: DialogType.SUCCES,
        btnOkOnPress: () {},
        title: 'Check your email!',
        btnOkText: 'Okay',
      )..show();
    } else {
      errorModal(context, 'Something went wrong! Please try again later.');
    }
  }
}
