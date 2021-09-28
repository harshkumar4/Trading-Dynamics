import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:trading_dynamic/Screens/Auth/auth.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

import '../../sizeconfig.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen(
    this.responseData, {
    Key? key,
  }) : super(key: key);

  final Map<String, String> responseData;

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _loading = false;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
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
                  'Enter new password',
                  style: textStyle.copyWith(
                    fontSize: 32,
                    color: subColor,
                    letterSpacing: 0.7,
                  ),
                ),
                const SizedBox(height: 38),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your new password',
                  ),
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: _confirmPasswordController,
                  decoration: const InputDecoration(
                    hintText: 'Confirm your password',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: getRelativeWidht(.5),
                  child: _loading
                      ? const CircularProgressIndicator(
                          color: yellowGold,
                        )
                      : GradientButton(
                          label: 'Send otp',
                          onTap: () {
                            setState(() {
                              _loading = true;
                            });
                            onPasswordChanged();
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

  Future<void> onPasswordChanged() async {
    print(widget.responseData);
  }
}
