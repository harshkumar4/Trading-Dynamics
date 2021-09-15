import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:trading_dynamic/Screens/Bot/Components/toggle_count.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

class CreateBotScreen extends StatefulWidget {
  const CreateBotScreen({Key? key}) : super(key: key);

  @override
  _CreateBotScreenState createState() => _CreateBotScreenState();
}

class _CreateBotScreenState extends State<CreateBotScreen> {
  bool _doubleButtonValue = true;

  TextStyle _textStyle() => textStyle.copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w400,
        letterSpacing: 1,
      );
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
                  width: 110,
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
                ToggleCount(3),
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
                ToggleCount(3),
              ],
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
