import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';
import 'package:trading_dynamic/Widgets/tab.dart';

import 'view_card_wid.dart';

class SignalsScreen extends StatelessWidget {
  const SignalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool tabIsActive = false;
    return Scaffold(
      appBar: appBar(context, 'Signals'),
      body: Padding(
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
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 12,
                ),
                itemBuilder: (context, index) => const SignalCard(),
              ),
            ),
            const SizedBox(height: 10),
            // Container(
            //   decoration: BoxDecoration(
            //     color: navGrey,
            //     borderRadius: BorderRadius.circular(6),
            //   ),
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 10,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         'BTC_RVN',
            //         style: textStyle.copyWith(
            //           fontSize: 18,
            //           fontWeight: FontWeight.normal,
            //           color: white,
            //         ),
            //       ),
            //       TextButton(
            //         onPressed: () {
            //           showDialog(
            //             context: context,
            //             barrierColor: navGrey.withOpacity(0.5),
            //             barrierDismissible: true,
            //             builder: (context) => viewCardWid(),
            //           );
            //         },
            //         child: Text(
            //           'View',
            //           style: textStyle.copyWith(
            //             color: green,
            //             fontSize: 18,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class SignalCard extends StatelessWidget {
  const SignalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: navGrey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'BTC USDT',
            style: textStyle.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: 26,
              letterSpacing: 0.2,
            ),
          ),
          Text(
            '↑ 29 %',
            style: textStyle.copyWith(
              // fontWeight: FontWeight.normal,
              fontSize: 26,
              color: green,
              letterSpacing: 0.2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GradientButton(
              label: 'View',
              onTap: () => showDialog(
                context: context,
                barrierColor: navGrey.withOpacity(0.5),
                barrierDismissible: true,
                builder: (context) => viewCardWid(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
