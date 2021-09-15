import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/tab.dart';

class RevenueScreen extends StatelessWidget {
  const RevenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Revenue'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            SizedBox(
              height: 32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                children: [
                  tab(
                    label: 'Daily',
                    isActive: true,
                  ),
                  const SizedBox(width: 8),
                  tab(
                    label: 'Weekly',
                    isActive: false,
                  ),
                  const SizedBox(width: 8),
                  tab(
                    label: 'Yearly',
                    isActive: false,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 14,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: [
                  Text(
                    'Today\'s Profit = 1234.56 USD',
                    style: textStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            ListTile(
              tileColor: navGrey,
              horizontalTitleGap: 44,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              trailing: IconButton(
                onPressed: () {},
                color: white,
                icon: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 32,
                ),
              ),
              title: Text(
                '12345678.5786',
                style: textStyle.copyWith(
                  color: green,
                  fontSize: 16, letterSpacing: 0.6,
                  // fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Text(
                'Profit',
                style: textStyle.copyWith(letterSpacing: 0.6),
              ),
              leading: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '05-05',
                    style: textStyle.copyWith(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '2021',
                    style: textStyle.copyWith(
                      color: subColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: navGrey,
              horizontalTitleGap: 44,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              trailing: IconButton(
                onPressed: () {},
                color: white,
                icon: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 32,
                ),
              ),
              title: Text(
                '12345678.5786',
                style: textStyle.copyWith(
                  color: green,
                  fontSize: 16, letterSpacing: 0.6,
                  // fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Text(
                'Profit',
                style: textStyle.copyWith(letterSpacing: 0.6),
              ),
              leading: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '05-05',
                    style: textStyle.copyWith(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '2021',
                    style: textStyle.copyWith(
                      color: subColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              tileColor: navGrey,
              horizontalTitleGap: 44,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              trailing: IconButton(
                onPressed: () {},
                color: white,
                icon: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 32,
                ),
              ),
              title: Text(
                '12345678.5786',
                style: textStyle.copyWith(
                  color: green,
                  fontSize: 16, letterSpacing: 0.6,
                  // fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Text(
                'Profit',
                style: textStyle.copyWith(letterSpacing: 0.6),
              ),
              leading: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '05-05',
                    style: textStyle.copyWith(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '2021',
                    style: textStyle.copyWith(
                      color: subColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
