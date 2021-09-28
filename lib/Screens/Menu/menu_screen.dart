import 'package:flutter/material.dart';
import 'package:trading_dynamic/Screens/Profile/api_binding_card.dart';
import 'package:trading_dynamic/Screens/Profile/profile_screen.dart';
import 'package:trading_dynamic/Screens/about_us_screen.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/gradient_icon.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Info'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
              title: Text(
                'someone@one.some',
                style: textStyle.copyWith(
                  // color: subColor,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'ID: 2131342',
                style: textStyle.copyWith(
                  color: subColor,
                ),
              ),
            ),
            const SizedBox(height: 4),
            infoTile(
              context: context,
              icon: Image.asset(
                'assets/newIcons/082-user-1.png',
                // color: white,
                fit: BoxFit.fill,
                height: 24,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              title: 'Profile',
            ),
            const SizedBox(height: 4),
            infoTile(
              context: context,
              icon: Image.asset(
                'assets/newIcons/087-technical-support.png',

                // color: white,
                fit: BoxFit.fill,
                height: 24,
              ),
              onTap: () {},
              title: 'Settings',
            ),
            const SizedBox(height: 4),
            infoTile(
              context: context,
              icon: Image.asset(
                'assets/newIcons/009-badge.png',
                fit: BoxFit.fill,
                height: 24,
              ),
              onTap: () {},
              title: 'Achiever’s',
            ),
            const SizedBox(height: 4),
            infoTile(
              context: context,
              icon: Image.asset(
                'assets/newIcons/network.png',
                fit: BoxFit.fill,
                height: 24,
              ),
              onTap: () {},
              title: 'Refer & Earn',
            ),
            const SizedBox(height: 4),
            infoTile(
              context: context,
              icon: Image.asset(
                'assets/newIcons/004-money.png',
                fit: BoxFit.fill,
                height: 24,
              ),
              onTap: () {},
              title: 'Wallet',
            ),
            const SizedBox(height: 4),
            infoTile(
              context: context,
              icon: Image.asset(
                'assets/newIcons/077-speech-bubble.png',
                fit: BoxFit.fill,
                height: 24,
              ),
              onTap: () {},
              title: 'Help',
            ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }

  Widget infoTile({
    required BuildContext context,
    required VoidCallback onTap,
    required Widget icon,
    required String title,
  }) =>
      Row(
        children: [
          gradientIcon(
            icon,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: textStyle.copyWith(
              // color: subColor,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: onTap,
            icon: const Icon(
              Icons.keyboard_arrow_right,
              size: 30,
            ),
          ),
        ],
      );
}
