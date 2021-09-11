import 'package:flutter/material.dart';

import '/../Theme/theme.dart';
import 'components/api_binding_card.dart';

class APIBinding extends StatelessWidget {
  const APIBinding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          iconSize: 42,
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'API Binding',
          style: textStyle.copyWith(
            fontSize: 20,
            letterSpacing: 0.8,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: const [
            ApiBindingWidget(
              label: 'Binance',
              iconUrl:
                  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/8rywt4uockrcex0r_1623403519.jpeg',
            ),
            SizedBox(height: 8),
            ApiBindingWidget(
              label: 'FTX',
              iconUrl: 'https://i.imgur.com/yQDvfFn.png',
            ),
            SizedBox(height: 8),
            ApiBindingWidget(
              label: 'Houbi',
              iconUrl:
                  'https://images.cointelegraph.com/images/1200_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy8yZTg3Nzk3ZjE4YzViNWMzOTRjMmUzMDRmY2U0OGQ5MC5wbmc=.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
