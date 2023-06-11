import "package:flutter/material.dart";
import 'package:mbank/screens/actions.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                logos[0],
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(texts[0]),
                    Text(date[0]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 104.0),
                  child: Text('-\$${sum[0]}'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chevron_right_outlined),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                logos[1],
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(texts[1]),
                    Text(date[1]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75.0),
                  child: Text('-\$${sum[1]}'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chevron_right_outlined),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                logos[2],
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(texts[2]),
                    Text(date[2]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 102.0),
                  child: Text('-\$${sum[2]}'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chevron_right_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
