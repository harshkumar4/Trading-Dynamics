import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

import '../../sizeconfig.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _otpController = TextEditingController();
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
                  'Enter Otp',
                  style: textStyle.copyWith(
                    fontSize: 32,
                    color: subColor,
                    letterSpacing: 0.7,
                  ),
                ),
                const SizedBox(height: 38),
                TextField(
                  controller: _otpController,
                  decoration: const InputDecoration(
                    hintText: 'Enter otp sent on your email...',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: getRelativeWidht(.5),
                  child: const GradientButton(label: 'Submit'),
                ),
                // const SizedBox(height: 4),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend otp in 12 seconds',
                    style: textStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
