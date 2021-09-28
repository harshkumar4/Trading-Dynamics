import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart' as pro;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trading_dynamic/Providers/user_provider.dart';
import 'package:trading_dynamic/Screens/Markets/market.dart';
import 'package:trading_dynamic/Screens/Menu/menu_screen.dart';
import 'package:trading_dynamic/Screens/Notification/notification_screen.dart';
import 'package:trading_dynamic/Screens/Revenue/revenue.dart';

import 'package:trading_dynamic/Widgets/elevated_container.dart';
import 'package:trading_dynamic/Widgets/gradient_icon.dart';

//screens
import '../ApiBinding/api_binding_screen.dart';
import '../Signals/signals_screen.dart';
//
import 'package:trading_dynamic/Providers/nav_controller.dart';
import './components/category_item.dart';
import './components/signal_widget.dart';
import '../refer_screen.dart';
import '/../sizeconfig.dart';
import '/../Theme/theme.dart';

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
        toolbarHeight: 38,
        leading: IconButton(
          onPressed: () {
            pro.Provider.of<NavigationController>(context, listen: false)
                .hideNavBar();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MenuScreen(),
              ),
            );
          },
          icon: Image.asset(
            'assets/newIcons/097-menu-1.png',
            color: white,
          ),
          iconSize: 26,
        ),
        actions: [
          IconButton(
            onPressed: () {
              pro.Provider.of<NavigationController>(context, listen: false)
                  .hideNavBar();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const NotificationScreen(),
                ),
              );
            },
            icon: Stack(
              children: [
                Image.asset(
                  'assets/newIcons/072-bell-1.png',
                  color: white,
                  height: 22,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      color: red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            // iconSize: 16,
          ),
          const SizedBox(
            width: 4,
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: getRelativeHeight(.2),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: navGrey,
                            offset: Offset(-2, -2),
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                          BoxShadow(
                            color: black,
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: PageView(
                        children: _carouselItems,
                        onPageChanged: (value) => setState(
                          () {
                            _activeIndex = value;
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 4,
                    // left: 0,
                    // right: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedSmoothIndicator(
                        activeIndex: _activeIndex,
                        count: _carouselItems.length,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: white,
                          dotHeight: 8,
                          dotWidth: 8,
                          expansionFactor: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 4,
              ),
              child: Row(
                children: [
                  gradientIcon(
                    Image.asset(
                      'assets/newIcons/promotion.png',
                      fit: BoxFit.fill,
                      height: 20,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Expanded(
                    child: Text(
                      'Ea eiusmod irure in aliqua excepteur anim and exercitation adipisicing duis.',
                      style: textStyle,
                      maxLines: 1,
                      // overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: getRelativeHeight(.22),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF101012),
                // color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: CategoryItem(
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
                          icon: gradientIcon(
                            Image.asset(
                              'assets/newIcons/006-api-3.png',
                              fit: BoxFit.fill,
                              height: 24,
                            ),
                          ),
                          label: 'Api',
                        ),
                      ),
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: CategoryItem(
                          onTap: () => pro.Provider.of<NavigationController>(
                                  context,
                                  listen: false)
                              .hideNavBar(),
                          icon: gradientIcon(
                            Image.asset(
                              'assets/newIcons/upload.png',
                              fit: BoxFit.fill,
                              height: 24,
                            ),
                          ),
                          label: 'Wallet',
                        ),
                      ),
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: CategoryItem(
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
                          icon: gradientIcon(
                            Image.asset(
                              'assets/newIcons/network.png',
                              fit: BoxFit.fill,
                              height: 24,
                            ),
                          ),
                          label: 'Referral',
                        ),
                      ),
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: CategoryItem(
                          onTap: () {
                            print(UserProvider().userToken);
                          },
                          icon: gradientIcon(
                            Image.asset(
                              'assets/newIcons/009-badge.png',
                              fit: BoxFit.fill,
                              height: 24,
                            ),
                          ),
                          label: 'Achiever’s',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CategoryItem(
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
                            icon: gradientIcon(
                              Image.asset(
                                'assets/newIcons/015-wireless.png',
                                fit: BoxFit.fill,
                                height: 22,
                              ),
                            ),
                            label: 'Siganls',
                          ),
                        ),
                      ),
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: CategoryItem(
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
                          icon: gradientIcon(
                            Image.asset(
                              'assets/newIcons/022-growth.png',
                              fit: BoxFit.fill,
                              height: 24,
                            ),
                          ),
                          label: 'Revenue',
                        ),
                      ),
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: CategoryItem(
                          onTap: () {
                            pro.Provider.of<NavigationController>(context,
                                    listen: false)
                                .hideNavBar();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Material(
                                  child: MarketScreen(),
                                  color: bgGrey,
                                ),
                              ),
                            );
                          },
                          icon: gradientIcon(
                            Image.asset(
                              'assets/newIcons/023-revenue.png',
                              fit: BoxFit.fill,
                              height: 24,
                            ),
                          ),
                          label: 'Market',
                        ),
                      ),
                      elevatedContainer(
                        Bgcolor: const Color(0xFF101012),
                        child: CategoryItem(
                          onTap: () {},
                          icon: gradientIcon(
                            Image.asset(
                              'assets/newIcons/030-chatbot.png',

                              // color: white,
                              fit: BoxFit.fill,
                              height: 24,
                            ),
                          ),
                          label: 'Bot',
                        ),
                      ),
                    ],
                  ),
                  // Divider(
                  //   color: white,
                  //   height: 2,
                  //   thickness: 1,
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: elevatedContainer(
                      Bgcolor: Color(0xFF202024),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Total Profit',
                              style: textStyle,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '\$2000',
                              style: textStyle.copyWith(
                                color: green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: elevatedContainer(
                      Bgcolor: Color(0xFF202024),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Today\'s Profit',
                              style: textStyle,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '\$2000',
                              style: textStyle.copyWith(
                                color: green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: elevatedContainer(
                      Bgcolor: Color(0xFF202024),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Total Earnings',
                              style: textStyle,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '\$2000',
                              style: textStyle.copyWith(
                                color: green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Chart Area
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: elevatedContainer(
                Bgcolor: primaryColor,
                child: Container(
                  // margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(
                    right: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF30343b),
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
                      backgroundColor: Color(0xFF30343b),
                    ),
                  ),
                ),
              ),
            ),
            //Signal Area
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
                      children: const [
                        Text(
                          'See all',
                          style: textStyle,
                        ),
                        Icon(
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
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: elevatedContainer(
                      Bgcolor: black,
                      child: const SignalWidget(
                        url:
                            'https://s2.coinmarketcap.com/static/img/coins/200x200/1.png',
                        title: 'Bitcoin',
                      ),
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

