import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:trading_dynamic/Screens/Bot/Components/toggle_count.dart';
import 'package:trading_dynamic/Screens/Signals/view_card_wid.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';
import 'package:trading_dynamic/sizeconfig.dart';

class CreateBotScreen extends StatefulWidget {
  const CreateBotScreen({Key? key}) : super(key: key);

  @override
  _CreateBotScreenState createState() => _CreateBotScreenState();
}

class _CreateBotScreenState extends State<CreateBotScreen> {
  bool _doubleButtonValue = true;

  int _cycleCount = 3;
  int _tradeCount = 3;

  TextStyle _textStyle() => textStyle.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.2,
      );

  void increaseCycleCount() => setState(() {
        _cycleCount++;
      });

  void decreaseCycleCount() => setState(() {
        _cycleCount--;
      });
  void increaseTradeCount() => setState(() {
        _tradeCount++;
      });

  void decreaseTradeCount() => setState(() {
        _tradeCount--;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Create Bot'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1st Trade Min',
                  style: _textStyle(),
                ),
                SizedBox(
                  width: 120,
                  height: 34,
                  child: TextFormField(
                    style: textStyle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Double',
                  style: _textStyle(),
                ),
                FlutterSwitch(
                  value: _doubleButtonValue,
                  activeColor: green,
                  width: 120,
                  inactiveColor: red,
                  showOnOff: true,
                  duration: const Duration(milliseconds: 400),
                  onToggle: (onToggle) {
                    setState(() {
                      _doubleButtonValue = onToggle;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Take profit',
                  style: _textStyle(),
                ),
                SizedBox(
                  width: 120,
                  height: 34,
                  child: TextFormField(
                    style: textStyle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trailing stop loss',
                  style: _textStyle(),
                ),
                SizedBox(
                  width: 120,
                  height: 34,
                  child: TextFormField(
                    style: textStyle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Re - Entry Point',
                  style: _textStyle(),
                ),
                SizedBox(
                  width: 120,
                  height: 34,
                  child: TextFormField(
                    style: textStyle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cycle',
                  style: _textStyle(),
                ),
                ToggleCount(
                  decFunc: decreaseCycleCount,
                  incFunc: increaseCycleCount,
                  value: _cycleCount.toString(),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trade',
                  style: _textStyle(),
                ),
                ToggleCount(
                  incFunc: increaseTradeCount,
                  decFunc: decreaseTradeCount,
                  value: _tradeCount.toString(),
                ),
              ],
            ),
            const SizedBox(height: 18),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _tradeCount,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 45,
                      width: getRelativeWidht(.40),
                      child: const TextField(
                        decoration: InputDecoration(hintText: 'Quantity'),
                      ),
                    ),
                    // const SizedBox(width: 20),
                    SizedBox(
                      height: 45,
                      width: getRelativeWidht(.40),
                      child: const TextField(
                        decoration: InputDecoration(hintText: ' % '),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 28),
            const GradientButton(label: 'Create'),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
