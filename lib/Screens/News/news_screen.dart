import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_dynamic/Theme/theme.dart';

import '../../Widgets/tab.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: textStyle.copyWith(
            fontSize: 20,
            letterSpacing: 0.8,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            SizedBox(
              height: 32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: tab(
                    label: 'All for one',
                    isActive: index == 1 ? true : false,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Ex culpa do culpa in proident quis.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://i0.wp.com/thenerddaily.com/wp-content/uploads/2018/08/Reasons-To-Watch-Anime.jpg?fit=1000%2C742&ssl=1',
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Exercitation elit pariatur elit commodo cupidatat ut veniam.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Nulla aliqua labore aliquip ut velit non cupidatat.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2a6bf3c3-ed4e-4d52-85b6-2692a3b8eeac/dd1ya7y-08e16b82-5481-4715-8dd9-0c232c799dd9.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzJhNmJmM2MzLWVkNGUtNGQ1Mi04NWI2LTI2OTJhM2I4ZWVhY1wvZGQxeWE3eS0wOGUxNmI4Mi01NDgxLTQ3MTUtOGRkOS0wYzIzMmM3OTlkZDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.OQ1DSpg_Av9MhFeC9ykBUeowD1cHU7DtBQAWvJ-GQHo',
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Nostrud ea ea velit sunt id Lorem non cillum amet qui.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Nostrud sunt irure ipsum duis consequat sit dolore ex consequat.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://cdn.vox-cdn.com/thumbor/eFUntLRiWPwrd2PC0bdCK6JTgJQ=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22190955/Dr._STONE_Season_2_release_date_Episode_24_ending_with_Stone_Wars_Dr._STONE_manga_compared_to_the_anime_Spoilers.jpg',
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Anim sit id qui ullamco reprehenderit.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Ut cillum quis laboris minim qui excepteur ullamco do.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://9tailedkitsune.com/wp-content/uploads/2020/10/jujutsukaisen.jpg',
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Anim sit nostrud aliqua ullamco irure eu non.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Reprehenderit labore laboris aliquip ea deserunt sunt consequat veniam velit ad excepteur duis.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://www.online-tech-tips.com/wp-content/uploads/2021/03/Hero-Anime.jpg.optimal.jpg',
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Anim magna cillum in reprehenderit adipisicing.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Esse anim dolore id commodo elit laboris eu non sit cupidatat est irure velit exercitation.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://images.saymedia-content.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTc0NDc1NjQzNDg3MDA0Mjk0/top-10-most-popular-anime-of-all-time.jpg',
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Sint irure consectetur nulla dolore incididunt deserunt id quis sint nisi mollit do.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Tempor ad fugiat nulla excepteur cillum aliqua eu officia quis quis reprehenderit excepteur non exercitation.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2a6bf3c3-ed4e-4d52-85b6-2692a3b8eeac/dd1ya7y-08e16b82-5481-4715-8dd9-0c232c799dd9.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzJhNmJmM2MzLWVkNGUtNGQ1Mi04NWI2LTI2OTJhM2I4ZWVhY1wvZGQxeWE3eS0wOGUxNmI4Mi01NDgxLTQ3MTUtOGRkOS0wYzIzMmM3OTlkZDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.OQ1DSpg_Av9MhFeC9ykBUeowD1cHU7DtBQAWvJ-GQHo',
                fit: BoxFit.fill,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
