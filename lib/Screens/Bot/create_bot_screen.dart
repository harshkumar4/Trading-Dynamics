import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:http/http.dart';

import 'package:trading_dynamic/Screens/Bot/Components/toggle_count.dart';

import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/error_modal.dart';
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
  int _tradeCount = 1;

  late TextEditingController _symbolController;
  late TextEditingController _1stTradeMinController;
  late TextEditingController _takeProfitController;
  late TextEditingController _reEntryPointController;
  late TextEditingController _trailngStopLossController;
  late TextEditingController _apiKeyController;
  late TextEditingController _secretKeyController;

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
  void initState() {
    super.initState();
    _symbolController = TextEditingController();
    _1stTradeMinController = TextEditingController();
    _takeProfitController = TextEditingController();
    _reEntryPointController = TextEditingController();
    _trailngStopLossController = TextEditingController();
    _apiKeyController = TextEditingController();
    _secretKeyController = TextEditingController();
  }

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
                  'Bot Name',
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
                  'Symbol',
                  style: _textStyle(),
                ),
                SizedBox(
                  width: 120,
                  height: 34,
                  child: TextFormField(
                    controller: _symbolController,
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
                  '1st Trade Min',
                  style: _textStyle(),
                ),
                SizedBox(
                  width: 120,
                  height: 34,
                  child: TextFormField(
                    controller: _1stTradeMinController,
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
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    controller: _takeProfitController,
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
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    controller: _trailngStopLossController,
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
                    controller: _reEntryPointController,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'Api Key',
            //       style: _textStyle(),
            //     ),
            //     SizedBox(
            //       width: 120,
            //       height: 34,
            //       child: TextFormField(
            //         controller: _apiKeyController,
            //         style: textStyle,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(4),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 18),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       'Secret Key',
            //       style: _textStyle(),
            //     ),
            //     SizedBox(
            //       width: 120,
            //       height: 34,
            //       child: TextFormField(
            //         controller: _secretKeyController,
            //         style: textStyle,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(4),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 18),
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
            GradientButton(
              label: 'Create',
              onTap: onCreate,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Future<void> onCreate() async {
    String _symbol = _symbolController.text.trim();
    String _tradeMin = _1stTradeMinController.text.trim();
    String _takeProfit = _takeProfitController.text.trim();
    String _reEntryPoint = _reEntryPointController.text.trim();
    String _trailngStopLoss = _trailngStopLossController.text.trim();
    String _tradeCountValue = _tradeCount.toString();
    String _apiKey = _apiKeyController.text.trim();
    String _secretKey = _secretKeyController.text.toString();

    if (_symbol.isEmpty ||
        _tradeMin.isEmpty ||
        _takeProfit.isEmpty ||
        _reEntryPoint.isEmpty ||
        _trailngStopLoss.isEmpty ||
        _apiKey.isEmpty ||
        _secretKey.isEmpty) {
      errorModal(context, 'Values can not be empty!');
      return;
    } else {
      try {
        Uri url = Uri.parse('http://7ac0-94-237-73-96.ngrok.io/api/bot_config');

        String data = json.encode(
          {
            "symbol": _symbol,
            "quantity": _tradeMin,
            "max_change_percent": _takeProfit,
            "min_change_percent": _reEntryPoint,
            "max_reversal_percent": _trailngStopLoss,
            "max_trades": _tradeCountValue,
            "api_key": _apiKey,
            "secret": _secretKey,
            "live": "True",
          },
        );

        print(data);
        Response response = await post(
          url,
          body: data,
        );

        print(response.statusCode);
        print(response.body);

        if (response.statusCode == 200 || response.statusCode == 201) {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.SUCCES,
            animType: AnimType.SCALE,
            title: 'Bot Created!',
            btnOkOnPress: () {},
          )..show();
        } else {
          errorModal(context, 'Something went wrong!');
        }
      } on Exception catch (e) {
        errorModal(context, 'Something went wrong!');
      }
    }
  }
}
