import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/sizeconfig.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: appBar(context, 'Contact Us'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Row(),
            Image.asset(
              'assets/icons/maxresdefault.jpg',
              height: getRelativeHeight(.4),
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            const Icon(
              Icons.location_on,
              color: neon,
              size: 40,
            ),
            // const SizedBox(
            //   height: 4,
            // ),
            SizedBox(
              width: getRelativeWidht(.5),
              child: Text(
                ' Banglore, India',
                style: textStyle.copyWith(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            const Icon(
              Icons.call,
              color: neon,
              size: 40,
            ),
            // const SizedBox(
            //   height: 4,
            // ),
            Text(
              '0123456789',
              style: textStyle.copyWith(fontSize: 18),
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            const Icon(
              Icons.timer,
              color: neon,
              size: 40,
            ),

            Text(
              'Monday - Friday',
              style: textStyle.copyWith(fontSize: 18),
            ),
            Text(
              '10:00 am - 07:00 pm',
              style: textStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
          ],
        ),
      );
}
