import 'package:flutter/material.dart';
import 'package:trading_dynamic/Screens/ApiBinding/components/api_binding_card.dart';
import 'package:trading_dynamic/Screens/Auth/auth.dart';
import 'package:trading_dynamic/Screens/Profile/api_binding_card.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';

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
              icon: const Icon(
                Icons.account_circle,
                color: neon,
              ),
              label: 'Name',
              onTap: () {},
            ),
            const SizedBox(height: 4),
            ApiBindingCardWidget(
              icon: const Icon(
                Icons.phone,
                color: neon,
              ),
              label: 'Phone',
              onTap: () {},
            ),
            const SizedBox(height: 4),
            ApiBindingCardWidget(
              icon: Image.asset(
                'assets/icons/email.png',
                fit: BoxFit.fill,
                height: 20,
                color: neon,
                width: 20,
              ),
              label: 'Email',
              onTap: () {},
            ),
            const SizedBox(height: 4),
            ApiBindingCardWidget(
              icon: Image.asset(
                'assets/icons/universe(1).png',
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: neon,
              ),
              label: 'Country',
              onTap: () {},
            ),
            const SizedBox(height: 4),
            ApiBindingCardWidget(
              icon: Image.asset(
                'assets/icons/user(1).png',
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: neon,
              ),
              label: 'User Id',
              onTap: () {},
            ),
            const SizedBox(height: 4),
            ApiBindingCardWidget(
              icon: Image.asset(
                'assets/icons/tree-topper(2).png',
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: neon,
              ),
              label: 'Topper',
              onTap: () {},
            ),
            const SizedBox(height: 4),
            ApiBindingCardWidget(
              icon: Image.asset(
                'assets/icons/management(1).png',
                fit: BoxFit.fill,
                height: 20,
                width: 20,
                color: neon,
              ),
              label: 'Team',
              onTap: () {},
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => AuthScreen(),
                ),
              ),
              child: Text(
                'Logout',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 18,
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
    );
  }
}
