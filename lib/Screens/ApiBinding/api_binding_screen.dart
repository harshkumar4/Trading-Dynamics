import 'package:flutter/material.dart';

import 'components/api_binding_card.dart';
import '../../Widgets/app_bar.dart';
import 'exchange_screen.dart';

class APIBinding extends StatelessWidget {
  const APIBinding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Api Binding'),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            ApiBindingWidget(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Exchange(
                    title: 'Binance',
                  ),
                ),
              ),
              label: 'Binance',
              iconUrl:
                  'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/8rywt4uockrcex0r_1623403519.jpeg',
            ),
            const SizedBox(height: 8),
            ApiBindingWidget(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Exchange(title: 'FTX'),
                ),
              ),
              label: 'FTX',
              iconUrl: 'https://i.imgur.com/yQDvfFn.png',
            ),
            const SizedBox(height: 8),
            ApiBindingWidget(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Exchange(title: 'Houbi'),
                ),
              ),
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
