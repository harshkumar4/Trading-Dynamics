import 'package:flutter/material.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Theme/theme.dart';

class Exchange extends StatelessWidget {
  const Exchange({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, '$title Exchange'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'API',
                    style: textStyle.copyWith(
                      fontSize: 28,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'API Key',
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'API Secret key',
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'LINK',
                    style: textStyle.copyWith(
                      color: white,
                      letterSpacing: 0.6,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
