import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

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
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 14.0,
              ),
              child: GradientButton(
                label: 'Create bot',
                icon: Icon(
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
                                        Text(
                                          '+1.89%',
                                          style: textStyle.apply(
                                            color: green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Map tingale'),
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
                                        viewCardText('Trailing stop loss'),
                                        Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: red,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Text(
                                            'NO',
                                            style: textStyle,
                                          ),
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
                                          'Cycle Value',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Side'),
                                        Text(
                                          'Long',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Symbol'),
                                        Text(
                                          'Symbol value',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Quantity'),
                                        Text(
                                          '8',
                                          style: textStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        viewCardText('Exchange'),
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
