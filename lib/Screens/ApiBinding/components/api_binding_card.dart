import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import '/../Theme/theme.dart';

class ApiBindingWidget extends StatelessWidget {
  const ApiBindingWidget({
    Key? key,
    required this.iconUrl,
    required this.label,
    this.onTap,
    this.connected = false,
  }) : super(key: key);

  final String iconUrl;
  final String label;
  final bool connected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    void onRevomeConnection() {
      AwesomeDialog(
        context: context,
        animType: AnimType.SCALE,
        dialogType: DialogType.WARNING,
        title: 'Are you sure to remove connection?',
        btnOkOnPress: () {},
        btnCancelOnPress: () {},
      )..show();
    }

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Image.network(
                  iconUrl,
                  fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: textStyle.copyWith(
                    fontSize: 18,
                    letterSpacing: 0.7,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          if (!connected)
            TextButton(
              onPressed: onTap,
              child: Image.asset(
                'assets/newIcons/chain.png',
                color: green,
                height: 20,
                width: 20,
              ),
            ),
          if (connected)
            TextButton(
              onPressed: onTap,
              child: Image.asset(
                'assets/newIcons/view.png',
                color: yellowGold,
                height: 20,
                width: 20,
              ),
            ),
          if (connected)
            TextButton(
              onPressed: onRevomeConnection,
              child: Image.asset(
                'assets/newIcons/link.png',
                // color: green,
                height: 20,
                width: 20,
              ),
            ),
        ],
      ),
    );
  }
}
