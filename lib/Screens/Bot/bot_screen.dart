import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:trading_dynamic/Providers/nav_controller.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

import 'create_bot_screen.dart';

class BotScreen extends StatelessWidget {
  const BotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bot'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 14.0,
              ),
              child: GradientButton(
                onTap: () {
                  Provider.of<NavigationController>(context, listen: false)
                      .hideNavBar();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const CreateBotScreen(),
                    ),
                  );
                },
                label: 'Create bot',
                icon: const Icon(
                  Icons.add,
                  size: 28,
                ),
              ),
            ),
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
                    'BOTX',
                    style: textStyle.copyWith(
                      fontSize: 24,
                      color: white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Card(
                              color: bgGrey,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 8,
                                ),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'BOTX',
                                      style: textStyle.copyWith(
                                        fontSize: 26,
                                        color: white,
                                      ),
                                    ),
                                    const Divider(
                                      color: navGrey,
                                      thickness: 1.5,
                                      // height: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('1st Trade Min'),
                                        SizedBox(
                                          width: 80,
                                          height: 18,
                                          child: TextField(
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.fromLTRB(
                                                      5.0, 1.0, 5.0, 30.0),
                                            ),
                                            style: textStyle.copyWith(
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Double'),
                                        FlutterSwitch(
                                          value: true,
                                          height: 25,
                                          activeColor: green,
                                          inactiveColor: red,
                                          showOnOff: true,
                                          width: 45,
                                          valueFontSize: 8,
                                          padding: 2,
                                          toggleSize: 22,
                                          onToggle: (onToggle) {},
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Take profit'),
                                        Text(
                                          '124.89',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Trailing Stop Loss'),
                                        Text(
                                          '24.89',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Re-Entry Point'),
                                        Text(
                                          '0022',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Cycle'),
                                        Text(
                                          '01',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Trade'),
                                        Text(
                                          'Value',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        barrierDismissible: true,
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
            const SizedBox(height: 10),
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
                        builder: (context) => Center(
                          child: Card(
                            child: Text('Some text'),
                          ),
                        ),
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

  Text viewCardText(String text) => Text(
        text,
        style: textStyle.copyWith(
          color: subColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      );
}
