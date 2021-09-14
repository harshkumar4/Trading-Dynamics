import 'package:flutter/material.dart';
import 'package:trading_dynamic/Widgets/tab.dart';
import 'package:trading_dynamic/Theme/theme.dart';

class AcademyScreen extends StatelessWidget {
  const AcademyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Academy',
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: tab(
                      label: 'All',
                      isActive: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: tab(
                      label: 'Live',
                      isActive: false,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              tileColor: navGrey,
              title: Text(
                'Voluptate mollit laborum nulla dolore non exercitation aute sunt.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'In occaecat anim duis consectetur ad esse ullamco minim dolor incididunt cillum veniam elit consequat.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://www.economist.com/img/b/1280/720/90/sites/default/files/images/2021/06/articles/main/20210605_wbp501.jpg',
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
                'Anim duis consectetur pariatur ut reprehenderit aliquip laboris deserunt aliqua.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Ullamco laboris proident elit in culpa culpa mollit ullamco fugiat pariatur adipisicing ipsum aliqua.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://media.newyorker.com/photos/59097fd82179605b11ad9782/master/w_2560%2Cc_limit/Alt-Your-Name.jpg',
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
                'Amet duis non sunt quis ea consequat nisi ipsum.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Laboris Lorem consectetur eiusmod enim.',
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
                'Laborum consequat nostrud non nisi non consequat incididunt ut commodo commodo aliquip esse.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Labore officia consectetur ipsum exercitation amet commodo dolor do ex velit.',
                style: textStyle.copyWith(
                  color: Color(0xFFa7a7a9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Image.network(
                'https://www.japannakama.co.uk/wp-content/uploads/2021/04/anime-face-mask-350x250.jpg',
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
                'Non pariatur mollit labore Lorem consectetur eiusmod nostrud fugiat in cillum enim velit officia.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Cupidatat duis aute proident anim elit minim ex.',
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
                'Cillum in ea ad laborum officia.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Magna excepteur ut ullamco ullamco amet sint nulla deserunt eiusmod.',
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
                'Culpa mollit id reprehenderit amet non commodo consectetur elit id do amet irure eiusmod.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Est aliqua quis sit ut.',
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
                'Ea duis incididunt labore incididunt non occaecat sit velit qui velit irure.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Dolor ad duis nostrud magna eiusmod tempor enim labore.',
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
                'Voluptate dolore dolor labore sint labore adipisicing elit aute incididunt ullamco laboris veniam adipisicing.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Amet sint sint duis consequat.',
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
                'Commodo aute ullamco est aute est culpa ea minim excepteur fugiat reprehenderit quis irure.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Pariatur ullamco eiusmod enim velit voluptate ut magna non eu exercitation laboris nisi.',
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
                'Cillum est nulla ipsum et aliqua in consectetur Lorem.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Nulla ipsum cupidatat occaecat consectetur incididunt eiusmod ex sunt.',
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
                'Eu incididunt velit consectetur occaecat nulla reprehenderit.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Duis Lorem eiusmod labore cupidatat dolore quis et cillum consectetur commodo culpa laborum.',
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
                'Do nulla nostrud ut nostrud aute esse officia ad aliquip deserunt et.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Eu nostrud cillum dolor nulla.',
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
                'Quis commodo ad do consectetur cupidatat.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Exercitation aliqua quis sit deserunt veniam tempor eiusmod adipisicing sit.',
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
