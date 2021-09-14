import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/tab.dart';

import 'view_card_wid.dart';

class SignalsScreen extends StatelessWidget {
  const SignalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool tabIsActive = false;
    return Scaffold(
      appBar: appBar(context, 'Signals'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        child: Column(
          children: [
            Row(
              children: [
                tab(
                  label: 'Open',
                  isActive: true,
                ),
                const SizedBox(width: 8),
                tab(
                  label: 'Close',
                  isActive: tabIsActive,
                ),
                const SizedBox(width: 8),
                tab(
                  label: 'Expired',
                  isActive: tabIsActive,
                ),
              ],
            ),
            const SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                color: navGrey,
                borderRadius: BorderRadius.circular(6),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BTC_RVN',
                    style: textStyle.copyWith(
                      fontSize: 24,
                      color: white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierColor: navGrey.withOpacity(0.5),
                        barrierDismissible: true,
                        builder: (context) => viewCardWid(),
                      );
                    },
                    child: Text(
                      'View',
                      style: textStyle.copyWith(
                        color: green,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
