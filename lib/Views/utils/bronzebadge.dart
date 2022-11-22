import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/utils/cards.dart';

class BronzeOffice extends StatelessWidget {
  const BronzeOffice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(2.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/word.png'),
                  Textinfo: 'MS-Word',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(4.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/powerpoint.png'),
                  Textinfo: 'MS-PowerPoint',
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class BronzeWebdes extends StatelessWidget {
  const BronzeWebdes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(2.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/html5.png'),
                  Textinfo: 'Html',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(4.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/css3.png'),
                  Textinfo: 'Css',
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class BronzeWebdev extends StatelessWidget {
  const BronzeWebdev({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(2.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/php.png'),
                  Textinfo: 'Php',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/react.png'),
                  Textinfo: 'React',
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class BronzeDatabase extends StatelessWidget {
  const BronzeDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(2.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/mysql.png'),
                  Textinfo: 'Sql',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(4.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/sql.png'),
                  Textinfo: 'Mysql',
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class BronzeAppdev extends StatelessWidget {
  const BronzeAppdev({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(2.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/java.png'),
                  Textinfo: 'Java',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(4.w, 2.h, 0, 0),
              child: SizedBox(
                width: 20.h,
                child: const Modulecard(
                  Cardimage: AssetImage('assets/swift.png'),
                  Textinfo: 'Swift',
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
