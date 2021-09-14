import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:trading_dynamic/Theme/theme.dart';

Center viewCardWid() => Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Card(
          color: bgGrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 8,
            ),
            child: Column(
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
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    viewCardText('1st Trade Min'),
                    SizedBox(
                      width: 80,
                      height: 18,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          contentPadding: const EdgeInsets.only(
                            bottom: 24,
                            left: 4,
                          ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    viewCardText('Re-Entry Point'),
                    Text(
                      'Long',
                      style: textStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(green),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Accept',
                        style: textStyle,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(red),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Reject',
                        style: textStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

Text viewCardText(String text) => Text(
      text,
      style: textStyle.copyWith(
        color: subColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
