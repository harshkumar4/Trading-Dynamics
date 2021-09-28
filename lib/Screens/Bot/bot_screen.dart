import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:trading_dynamic/Providers/nav_controller.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:trading_dynamic/Widgets/elevated_container.dart';
// import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:trading_dynamic/Widgets/gradient_button.dart';

import '../../sizeconfig.dart';
import 'Components/details_card.dart';
import 'create_bot_screen.dart';

class BotScreen extends StatelessWidget {
  const BotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bot'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal: getRelativeWidht(.2),
              ),
              child: GradientButton(
                onTap: () {
                  Provider.of<NavigationController>(context, listen: false)
                      .hideNavBar();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const CreateBotScreen(),
                    ),
                  );
                },
                label: 'Create bot',
                icon: const Icon(
                  Icons.add,
                  size: 28,
                ),
              ),
            ),
            const SizedBox(height: 10),
            elevatedContainer(
              Bgcolor: navGrey,
              child: Container(
                decoration: BoxDecoration(
                  color: navGrey,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BOTX',
                      style: textStyle.copyWith(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const DetailsCard(
                            title: 'BOTX',
                          ),
                          barrierDismissible: true,
                        );
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: green,
                      ),
                      iconSize: 22,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            elevatedContainer(
              Bgcolor: navGrey,
              child: Container(
                decoration: BoxDecoration(
                  color: navGrey,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BTC_RVN',
                      style: textStyle.copyWith(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const DetailsCard(title: 'BTC_RVN'),
                          barrierDismissible: true,
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: green,
                      ),
                      iconSize: 22,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
