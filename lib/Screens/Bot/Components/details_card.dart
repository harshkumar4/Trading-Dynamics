import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:trading_dynamic/Screens/Signals/view_card_wid.dart';
import 'package:trading_dynamic/Theme/theme.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
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
                  title,
                  style: textStyle.copyWith(
                    fontSize: 24,
                    color: white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Divider(
                  color: navGrey,
                  thickness: 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            borderRadius: BorderRadius.circular(4),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 30.0),
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
                      width: 80,
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
                    SizedBox(
                      width: 80,
                      height: 18,
                      child: textOnField('124.89'),
                    ),
                    // Text(
                    //   '124.89',
                    //   style: textStyle,
                    // ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    viewCardText('Trailing Stop Loss'),
                    SizedBox(
                      width: 80,
                      height: 18,
                      child: textOnField('24.89'),
                    ),
                    // Text(
                    //   '24.89',
                    //   style: textStyle,
                    // ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    viewCardText('Re-Entry Point'),
                    SizedBox(
                      width: 80,
                      height: 18,
                      child: textOnField('0024'),
                    ),
                    // Text(
                    //   '0022',
                    //   style: textStyle,
                    // ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    viewCardText('Cycle'),
                    SizedBox(
                      width: 80,
                      height: 18,
                      child: textOnField('01'),
                    ),
                    // Text(
                    //   '01',
                    //   style: textStyle,
                    // ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    viewCardText('Trade'),
                    SizedBox(
                      width: 80,
                      height: 18,
                      child: textOnField('value'),
                    ),
                    // Text(
                    //   'Value',
                    //   style: textStyle,
                    // ),
                  ],
                ),
                const SizedBox(height: 6),
              ],
            ),
          ),
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
