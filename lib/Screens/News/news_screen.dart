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
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
                'Dolor culpa nostrud irure laboris reprehenderit proident anim sit anim sint ipsum enim ad.',
                style: textStyle.copyWith(
                  color: white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                  'Consequat non duis laborum duis minim aliqua irure cillum.'),
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
