import 'package:flutter/material.dart';
import 'package:trading_dynamic/Screens/ApiBinding/components/api_binding_card.dart';
import 'package:trading_dynamic/Screens/Auth/auth.dart';
import 'package:trading_dynamic/Screens/Profile/api_binding_card.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';
import 'package:trading_dynamic/Widgets/gradient_icon.dart';
import 'package:trading_dynamic/sizeconfig.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Profile'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: CircleAvatar(
                  radius: 44,
                  backgroundImage: NetworkImage(
                      'https://c4.wallpaperflare.com/wallpaper/69/444/964/naruto-madara-uchiha-hd-wallpaper-preview.jpg')),
            ),
            const SizedBox(height: 8),
            ApiBindingCardWidget(
              color: primaryColor,
              icon: gradientIcon(
                Image.asset(
                  'assets/newIcons/082-user-1.png',
                  // color: white,
                  fit: BoxFit.fill,
                  height: 24,
                ),
              ),
              label: 'Name',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            ApiBindingCardWidget(
              color: primaryColor,
              icon: gradientIcon(
                Image.asset(
                  'assets/newIcons/042-smartphone.png',
                  // color: white,
                  fit: BoxFit.fill,
                  height: 24,
                ),
              ),
              label: 'Phone',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            ApiBindingCardWidget(
              color: primaryColor,
              icon: gradientIcon(
                Image.asset(
                  'assets/newIcons/043-mail.png',
                  // color: white,
                  fit: BoxFit.fill,
                  height: 24,
                ),
              ),
              label: 'Email',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            ApiBindingCardWidget(
              color: primaryColor,
              icon: gradientIcon(
                Image.asset(
                  'assets/newIcons/placeholder.png',
                  // color: white,
                  fit: BoxFit.fill,
                  height: 24,
                ),
              ),
              label: 'Country',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            ApiBindingCardWidget(
              color: primaryColor,
              icon: gradientIcon(
                Image.asset(
                  'assets/newIcons/id (1).png',
                  // color: white,
                  fit: BoxFit.fill,
                  height: 24,
                ),
              ),
              label: 'User Id',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            ApiBindingCardWidget(
              color: primaryColor,
              icon: gradientIcon(
                Image.asset(
                  'assets/newIcons/success.png',
                  // color: white,
                  fit: BoxFit.fill,
                  height: 24,
                ),
              ),
              label: 'Topper',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            ApiBindingCardWidget(
              color: primaryColor,
              icon: gradientIcon(
                Image.asset(
                  'assets/newIcons/team.png',
                  // color: white,
                  fit: BoxFit.fill,
                  height: 24,
                ),
              ),
              label: 'Team',
              onTap: () {},
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: getRelativeWidht(.4),
              child: GradientButton(
                // onTap: () => Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (context) => const AuthScreen(),
                //   ),
                // ),
                label: 'Logout',
                color: navGrey,
              ),
            ),
            // ElevatedButton(
            //   onPressed: () => Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(
            //       builder: (context) => AuthScreen(),
            //     ),
            //   ),
            //   child: Text(
            //     'Logout',
            //     style: textStyle.copyWith(
            //       color: white,
            //       fontSize: 18,
            //       letterSpacing: 0.6,
            //     ),
            //   ),
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(black),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
