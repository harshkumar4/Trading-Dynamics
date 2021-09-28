import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';
import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';

import 'components/pair_tile.dart';

class MarketScreen extends HookConsumerWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pairs = ref.watch(pairsProvider);
    final favoritePair = ref.watch(favoritePairProvider);
    return Container(
      key: Keys.HOME_SCREEN,
      child: Column(
        children: [
          appBar(
              context,
              'Market',
              IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const Icon(
                  Icons.search_outlined,
                ),
              )),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pair',
                        style: textStyle.copyWith(
                          color: subColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Last Price',
                        style: textStyle.copyWith(
                          color: subColor,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '24h chang%',
                        style: textStyle.copyWith(
                          color: subColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: pairs.when(
                    data: (data) => ListView.builder(
                      padding: const EdgeInsets.only(top: 0.0),
                      itemCount: data.length,
                      itemBuilder: (ctx, int idx) => ProviderScope(
                        overrides: [
                          currentPair.overrideWithValue(data[idx]),
                        ],
                        child: const PairTile(),
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(
                        color: yellowGold,
                      ),
                    ),
                    error: (error, e) => Center(
                      child: Text(error.toString().tr()),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
