import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  Widget headers(title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 20,
        fontFamily: 'Chilanka',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget numbers(val) {
    return Text(
      val,
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontFamily: 'Chilanka',
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget customRow(val1, val2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          val1,
          style: TextStyle(
            color: Colors.tealAccent,
            fontSize: 22,
            fontFamily: 'Chilanka',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          val2,
          style: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 22,
            fontFamily: 'Chilanka',
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Apra',
                  style: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 45,
                    fontFamily: 'Chilanka',
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  '+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: 'Chilanka',
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Apoorvam',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 45,
                    fontFamily: 'Chilanka',
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            Column(
              children: [
                headers('AVERAGE TEXTS PER DAY'),
                SizedBox(height: 10),
                numbers('4.27'),
              ],
            ),
            customRow('2.13', '2.14'),
            Column(
              children: [
                headers('AVERAGE WORDS PER MESSAGE'),
                SizedBox(height: 10),
                numbers('8.00'),
              ],
            ),
            customRow('8.35', '7.65'),
            headers('% TIMES TEXTED FIRST'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 130.0,
                  height: 35.0,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
                SizedBox(
                  width: 170.0,
                  height: 35.0,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ],
            ),
            headers('EMOJIS SENT'),
            customRow('168', '51'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 220.0,
                  height: 35.0,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.tealAccent,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80.0,
                  height: 35.0,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ],
            ),
            headers('MEDIA SENT'),
            customRow('14', '29'),
            headers('MESSAGES DELETED'),
            customRow('3', '10'),
          ],
        ),
      ),
    );
  }
}
