import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';

import 'components/tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Notifications'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        child: Column(
          children: [
            notificationTile(
              title: 'Withdrawl Message',
              subTitle:
                  'Fugiat dolore exercitation tempor aliqua. In cillum et magna adipisicing sint adipisicing do est voluptate labore sint.',
              icon: Icons.message_outlined,
              date: '2021-09-23 07:12',
            ),
            const SizedBox(height: 24),
            notificationTile(
              title: 'Deposit Message',
              subTitle:
                  'Fugiat dolore exercitation tempor aliqua. In cillum et magna adipisicing sint adipisicing do est voluptate labore sint.',
              icon: Icons.card_giftcard_outlined,
              date: '2021-09-23 07:12',
            ),
            const SizedBox(height: 24),
            notificationTile(
              title: 'Invested Message',
              subTitle:
                  'Fugiat dolore exercitation tempor aliqua. In cillum et magna adipisicing sint adipisicing do est voluptate labore sint.',
              icon: Icons.gamepad_outlined,
              date: '2021-09-23 07:12',
            ),
            const SizedBox(height: 24),
            notificationTile(
              title: 'Profit Message',
              subTitle:
                  'Fugiat dolore exercitation tempor aliqua. In cillum et magna adipisicing sint adipisicing do est voluptate labore sint.',
              icon: Icons.message_outlined,
              date: '2021-09-23 07:12',
            ),
          ],
        ),
      ),
    );
  }
}
