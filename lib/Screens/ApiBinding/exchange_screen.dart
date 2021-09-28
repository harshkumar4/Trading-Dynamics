import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:trading_dynamic/Providers/user_provider.dart';
import 'package:trading_dynamic/Screens/ApiBinding/components/youtube_player.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/error_modal.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../sizeconfig.dart';

class Exchange extends StatefulWidget {
  const Exchange({
    Key? key,
    required this.title,
    this.connected = false,
  }) : super(key: key);

  final String title;
  final bool connected;

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  late TextEditingController _apiKeyController;
  late TextEditingController _secretKeyController;

  @override
  void initState() {
    super.initState();
    _apiKeyController = TextEditingController();
    _secretKeyController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBar(context, '${widget.title} Exchange'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                exchangeRow(
                  title: 'API Key',
                  controller: _apiKeyController,
                  readOnly: widget.connected,
                ),
                const SizedBox(height: 8),
                exchangeRow(
                  title: 'Secret Key',
                  controller: _secretKeyController,
                  readOnly: widget.connected,
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getRelativeWidht(.25),
                    // vertical: 14,
                  ),
                  child: GradientButton(
                    label: 'Submit',
                    onTap: onSubmit,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                // vertical: 8,
              ),
              child: Text(
                'Tutorial',
                style: textStyle.copyWith(
                  fontSize: 18,
                  letterSpacing: 0.7,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              child: ExchangeYouTubePlayer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget exchangeRow({
    required String title,
    required TextEditingController controller,
    required bool readOnly,
  }) =>
      Container(
        color: primaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: textStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getRelativeWidht(.6),
              height: 40,
              child: TextField(
                readOnly: readOnly,
                controller: controller,
                decoration: InputDecoration(
                  fillColor: primaryColor,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: white,
                      // width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: white,
                      // width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: white,
                      // width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: white,
                      // width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Future<void> onSubmit() async {
    String _apiKey = _apiKeyController.text.trim();
    String _secretKey = _secretKeyController.text.trim();

    String _data = json.encode(
      {
        "api_key": _apiKey,
        "secret_key": _secretKey,
        "exchange": widget.title,
      },
    );
    print(_data);

    Uri url = Uri.parse('http://7ac0-94-237-73-96.ngrok.io/api/bot_auth');

    try {
      Response response = await post(
        url,
        headers: {
          'x-access-token': UserProvider().userToken,
        },
        body: _data,
      );

      if (response.statusCode == 200) {
        print(response.body);
      } else {
        errorModal(context, 'Something went wrong!');
      }
    } on Exception catch (e) {
      errorModal(context, 'Something went wrong!');
    }
  }
}
