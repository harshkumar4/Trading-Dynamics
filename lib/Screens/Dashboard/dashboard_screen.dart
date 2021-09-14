import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
      'https://d1e00ek4ebabms.cloudfront.net/production/bb70a85a-8a88-4b25-8871-20ec661ba119.jpg',
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
        Provider.of<NavigationController>(context, listen: false);
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
            Provider.of<NavigationController>(context, listen: false)
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
              Provider.of<NavigationController>(context, listen: false)
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
                          Provider.of<NavigationController>(context,
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
                        ),
                        label: 'Api',
                      ),
                      CategoryItem(
                        onTap: () => Provider.of<NavigationController>(context,
                                listen: false)
                            .hideNavBar(),
                        icon: const Icon(
                          Icons.receipt_long_outlined,
                          size: 30,
                        ),
                        label: 'Deposit',
                      ),
                      CategoryItem(
                        onTap: () {
                          Provider.of<NavigationController>(context,
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
                          Provider.of<NavigationController>(context,
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
                        ),
                        label: 'Siganls',
                      ),
                      CategoryItem(
                        icon: Icon(
                          Icons.paid_outlined,
                          size: 30,
                        ),
                        label: 'Revenue',
                      ),
                      CategoryItem(
                        icon: Icon(
                          Icons.store_mall_directory_outlined,
                          size: 30,
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
                            style: textStyle,
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
                            style: TextStyle(
                              color: white,
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
                            style: textStyle,
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
                    onTap: () {},
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
