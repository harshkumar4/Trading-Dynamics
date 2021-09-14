import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

class ReferScreen extends StatelessWidget {
  const ReferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, ''),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/open-box.png',
            height: 300,
            width: 200,
          ),
          Text(
            'Refer and get rewards',
            style: textStyle.copyWith(
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 60),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.0),
            child: GradientButton(label: 'Share'),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Image.asset(
                    'assets/icons/whatsapp.png',
                  ),
                  iconSize: 28,
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Image.asset(
                    'assets/icons/facebook.png',
                  ),
                  iconSize: 28,
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Image.asset(
                    'assets/icons/instagram.png',
                  ),
                  iconSize: 28,
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: Image.asset(
                    'assets/icons/copy.png',
                    color: white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
