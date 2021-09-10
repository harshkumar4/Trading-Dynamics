import 'package:flutter/material.dart';

//
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trading_dynamic/Screens/Dashboard/category_item.dart';
import 'package:trading_dynamic/sizeconfig.dart';
import '/../Theme/theme.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _activeIndex = 0;

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle_outlined),
          iconSize: 30,
        ),
        actions: const [
          Icon(
            Icons.info_outlined,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
                      icon: Icon(
                        Icons.network_check_outlined,
                        color: white,
                        size: 30,
                      ),
                      label: 'Api Binding',
                    ),
                    CategoryItem(
                      icon: Icon(
                        Icons.network_check_outlined,
                        color: white,
                        size: 30,
                      ),
                      label: 'Deposit',
                    ),
                    CategoryItem(
                      icon: Icon(
                        Icons.network_check_outlined,
                        color: white,
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
                      icon: Icon(
                        Icons.network_check_outlined,
                        color: white,
                        size: 30,
                      ),
                      label: 'Siganls',
                    ),
                    CategoryItem(
                      icon: Icon(
                        Icons.network_check_outlined,
                        color: white,
                        size: 30,
                      ),
                      label: 'Revenue',
                    ),
                    CategoryItem(
                      icon: Icon(
                        Icons.network_check_outlined,
                        color: white,
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
                          style: TextStyle(
                            color: white,
                          ),
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
                          'Today\'s Profit',
                          style: TextStyle(
                            color: white,
                          ),
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
                          style: TextStyle(
                            color: white,
                          ),
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
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
