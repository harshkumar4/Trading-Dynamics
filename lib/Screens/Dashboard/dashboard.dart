import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> _carouselItems = [
      Image.network(
          'https://assets-global.website-files.com/5f3306add5c511ca4cf17da9/60a7b7363fad8dfc3beb8589_Are%20Avid%20Investors%20Going%20To%20Migrate%20To%20Crypto%20And%20DeFi.jpg'),
      Image.network(
          'https://www.nasdaq.com/sites/acquia.prod/files/2020/11/09/cryptoLP%20banner%203%20jpg.jpg'),
      Image.network(
          'https://www.outlookindia.com/outlookmoney/resizer.php?src=https://www.outlookindia.com/outlookmoney/public/uploads/article/gallery/bf5db26032f7b869439b624f599128a9.jpg&w=400'),
      Image.network(
          'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ff76b9b66ab78e35db03812%2FA-picture-of-bitcoin--a-cryptocurrency--on-a-motherboard-%2F960x0.jpg%3Ffit%3Dscale')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Some'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: _carouselItems,
            options: CarouselOptions(
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              initialPage: 2,
              scrollPhysics: BouncingScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}
