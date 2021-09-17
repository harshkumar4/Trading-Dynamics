// import 'package:cryptocurrency_app/ui/screens/home.dart';
import 'package:cryptocurrency_app/ui/widgets/favorite_pair.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart' as pro;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trading_dynamic/Screens/Revenue/revenue.dart';
import 'package:trading_dynamic/Screens/about_us_screen.dart';

//screens
import '../ApiBinding/api_binding_screen.dart';
import '../Profile/profile_screen.dart';
import '../Signals/signals_screen.dart';
//
import 'package:trading_dynamic/Providers/nav_controller.dart';
import './components/category_item.dart';
import './components/signal_widget.dart';
import '../refer_screen.dart';
import '/../sizeconfig.dart';
import '/../Theme/theme.dart';

// from here remove
import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
// import 'package:cryptocurrency_app/ui/widgets/favorite_pair.dart';
// import 'package:cryptocurrency_app/ui/widgets/pair_tile.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:cryptocurrency_app/generated/locale_keys.g.dart';
import 'package:trading_dynamic/Widgets/app_bar.dart';

//

import 'package:auto_size_text/auto_size_text.dart';
// import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/models/markets/pair/pair.dart';
// import 'package:cryptocurrency_app/provider/crypto_provider.dart';
// import 'package:cryptocurrency_app/ui/screens/details.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:easy_localization/easy_localization.dart';
import 'package:cryptocurrency_app/constants/utils.dart' as Utils;

import 'package:cryptocurrency_app/ui/widgets/line_chart.dart';
import 'package:cryptocurrency_app/ui/widgets/title_price.dart';
import 'package:cryptocurrency_app/ui/widgets/details/details_widget.dart';
import 'package:cryptocurrency_app/ui/widgets/details/time_bar_selector.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _activeIndex = 0;
  late ScrollController _scrollController;

  final List<Widget> _carouselItems = [
    Image.network(
      'https://www.hp.com/us-en/shop/app/assets/images/uploads/prod/cryptocurrency-trends_-is-bitcoin-mining-profitable-in-2021162075307076393.jpg',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://m.economictimes.com/thumb/msid-86041994,width-1000,height-659,resizemode-4,imgsize-552110/cryptocurrency.jpg',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://images.livemint.com/img/2021/09/07/1600x900/f3d5e2ea-adb4-11eb-a936-0e5204611abd_1620952096909_1631021415634.jpg',
      fit: BoxFit.fill,
    ),
    Image.network(
      'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ff76b9b66ab78e35db03812%2FA-picture-of-bitcoin--a-cryptocurrency--on-a-motherboard-%2F960x0.jpg%3Ffit%3Dscale',
      fit: BoxFit.fill,
    )
  ];

  @override
  void initState() {
    super.initState();
    NavigationController _navController =
        pro.Provider.of<NavigationController>(context, listen: false);
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_navController.hideNavigationBar) {
        _navController.showNavBar();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            pro.Provider.of<NavigationController>(context, listen: false)
                .hideNavBar();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          },
          icon: const Icon(Icons.account_circle_outlined),
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {
              pro.Provider.of<NavigationController>(context, listen: false)
                  .hideNavBar();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const AboutUsScreen(),
                ),
              );
            },
            icon: const Icon(Icons.info_outlined),
            iconSize: 30,
          ),
          // const SizedBox(
          //   width: 10,
          // ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: SizedBox(
                height: getRelativeHeight(.28),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: PageView(
                    children: _carouselItems,
                    onPageChanged: (value) => setState(() {
                      _activeIndex = value;
                    }),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: AnimatedSmoothIndicator(
                activeIndex: _activeIndex,
                count: _carouselItems.length,
                effect: ExpandingDotsEffect(
                  activeDotColor: white,
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 2,
                ),
              ),
            ),
            Container(
              height: getRelativeHeight(.33),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryItem(
                        onTap: () {
                          pro.Provider.of<NavigationController>(context,
                                  listen: false)
                              .hideNavBar();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const APIBinding(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.api_rounded,
                          size: 30,
                          color: neon,
                        ),
                        label: 'Api',
                      ),
                      CategoryItem(
                        onTap: () => pro.Provider.of<NavigationController>(
                                context,
                                listen: false)
                            .hideNavBar(),
                        icon: const Icon(
                          Icons.receipt_long_outlined,
                          size: 30,
                          color: neon,
                        ),
                        label: 'Deposit',
                      ),
                      CategoryItem(
                        onTap: () {
                          pro.Provider.of<NavigationController>(context,
                                  listen: false)
                              .hideNavBar();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReferScreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.offline_share,
                          size: 30,
                          color: neon,
                        ),
                        label: 'Referral',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryItem(
                        onTap: () {
                          pro.Provider.of<NavigationController>(context,
                                  listen: false)
                              .hideNavBar();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignalsScreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.podcasts,
                          size: 30,
                          color: neon,
                        ),
                        label: 'Siganls',
                      ),
                      CategoryItem(
                        onTap: () {
                          pro.Provider.of<NavigationController>(context,
                                  listen: false)
                              .hideNavBar();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RevenueScreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.paid_outlined,
                          size: 30,
                          color: neon,
                        ),
                        label: 'Revenue',
                      ),
                      CategoryItem(
                        onTap: () {
                          pro.Provider.of<NavigationController>(context,
                                  listen: false)
                              .hideNavBar();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Material(
                                child: HomeScreen(),
                                color: bgGrey,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.store_mall_directory_outlined,
                          size: 30,
                          color: neon,
                        ),
                        label: 'Market',
                      ),
                    ],
                  ),
                  Divider(
                    color: white,
                    height: 2,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Total Profit',
                            style: textStyle,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '\$2000',
                            style: textStyle.copyWith(
                              color: green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: white,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Today\'s Profit',
                            style: textStyle,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '\$2000',
                            style: textStyle.copyWith(
                              color: green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: white,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Total Earnings',
                            style: textStyle,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '\$2000',
                            style: textStyle.copyWith(
                              color: green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(
                right: 20,
                top: 20,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              height: 300,
              child: BarChart(
                BarChartData(
                  titlesData: FlTitlesData(
                    leftTitles: SideTitles(
                      showTitles: true,
                      interval: 20,
                      margin: 20,
                      reservedSize: 30,
                      getTextStyles: (context, value) => textStyle,
                    ),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      margin: 14,
                      // reservedSize: 14,
                      getTextStyles: (context, value) => textStyle,
                    ),
                    rightTitles: SideTitles(
                      showTitles: false,
                      margin: 4,
                    ),
                    topTitles: SideTitles(
                      showTitles: false,
                      margin: 4,
                    ),
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 10,
                      barRods: [
                        BarChartRodData(
                          y: 40,
                          colors: [
                            Colors.green,
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 20,
                      barRods: [
                        BarChartRodData(
                          y: 20,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 30,
                      barRods: [
                        BarChartRodData(
                          colors: [
                            Colors.yellow,
                          ],
                          y: 80,
                        ),
                      ],
                    ),
                  ],
                  maxY: 100,
                  minY: 0,
                  backgroundColor: primaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Signals',
                    style: textStyle.copyWith(
                      fontSize: 18,
                      letterSpacing: 0.7,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pro.Provider.of<NavigationController>(context,
                              listen: false)
                          .hideNavBar();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignalsScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'See all',
                          style: textStyle,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SignalWidget(
                      url:
                          'https://m.economictimes.com/thumb/msid-86041994,width-1000,height-659,resizemode-4,imgsize-552110/cryptocurrency.jpg',
                      label: 'Bitcoin',
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

//Have to remove this all
class HomeScreen extends HookConsumerWidget {
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
                SizedBox(
                  height: 210,
                  child: favoritePair.when(
                    data: (data) {
                      return FavoritePairWidget(data);
                    },
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (error, e) => Center(
                      child: Text(error.toString().tr()),
                    ),
                  ),
                ),
                Expanded(
                  child: pairs.when(
                    data: (data) {
                      return Container(
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: 0.0),
                          itemCount: data.length,
                          itemBuilder: (ctx, int idx) => ProviderScope(
                            overrides: [
                              currentPair.overrideWithValue(data[idx]),
                            ],
                            child: const PairTile(),
                          ),
                        ),
                      );
                    },
                    loading: () => Center(
                      child: CircularProgressIndicator(),
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

final currentPair = Provider<Pair>((ref) => Pair(exchange: "", pair: ""));

class PairTile extends HookConsumerWidget {
  const PairTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pair = ref.watch(currentPair);
    final summary = ref.watch(pairSummaryProvider(pair));
    final graph = ref.watch(graphDataProvider(pair));

    return Container(
      key: Keys.PAIR_TILE,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                        pair: pair,
                      )));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 100,
          child: summary.when(
              data: (final summary) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        width: 80,
                        child: AutoSizeText(pair.pair,
                            textAlign: TextAlign.start,
                            minFontSize: 0,
                            stepGranularity: 0.1,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.headline5),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50,
                        child: graph.when(
                            data: (data) => LineChartWidget(
                                  color: summary.price.change.absolute < 0
                                      ? Colors.red
                                      : const Color(0xff02d39a),
                                  data: Utils.getPoints(data),
                                ),
                            loading: () => LineChartWidget(loading: true),
                            error: (e, ex) => LineChartWidget(error: true)),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.only(top: 25, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AutoSizeText(
                              summary.price.last.toStringAsFixed(2),
                              minFontSize: 10,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: AutoSizeText(
                                        summary.price.change.absolute
                                            .toStringAsFixed(5),
                                        textAlign: TextAlign.end,
                                        minFontSize: 0,
                                        stepGranularity: 0.1,
                                        maxLines: 1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .apply(
                                                color: summary.price.change
                                                            .absolute >=
                                                        0
                                                    ? Colors.green
                                                    : Colors.red)),
                                  ),
                                  AutoSizeText(
                                    ' (${summary.price.change.percentage.toStringAsFixed(2)}%)',
                                    textAlign: TextAlign.end,
                                    minFontSize: 0,
                                    stepGranularity: 0.1,
                                    maxLines: 1,
                                    style: textStyle,
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stk) =>
                  Center(child: Text(error.toString().tr()))),
        ),
      ),
    );
  }
}

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
                    data: (data) =>
                        LineChartWidget(data: Utils.getPoints(data)),
                    loading: () => const LineChartWidget(loading: true),
                    error: (e, ex) => const LineChartWidget(error: true)),
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
