import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/ui/widgets/details/details_widget.dart';
import 'package:cryptocurrency_app/ui/widgets/details/time_bar_selector.dart';
import 'package:cryptocurrency_app/ui/widgets/line_chart.dart';
import 'package:cryptocurrency_app/ui/widgets/title_price.dart';
import 'package:flutter/material.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cryptocurrency_app/constants/utils.dart' as Utils;

class DetailsScreen extends HookConsumerWidget {
  final Pair pair;
  const DetailsScreen({required this.pair});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final graph = ref.watch(graphDataProvider(pair));

    return Scaffold(
      key: Keys.DETAILS_SCREEN,
      appBar: appBar(context, 'Details'),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TitlePrice(pair: pair)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
                child: graph.when(
                  data: (data) => LineChartWidget(
                    data: Utils.getPoints(data),
                  ),
                  loading: () => const LineChartWidget(loading: true),
                  error: (e, ex) => const LineChartWidget(error: true),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TimeBarSelector(),
              const SizedBox(
                height: 15,
              ),
              DetailsWidget(pair: pair),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
