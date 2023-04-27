import 'package:flutter/material.dart';

class HotNftCard extends StatelessWidget {
  final String title;
  final String time;
  final String price;
  final String url;

  const HotNftCard(
      {super.key,
      required this.title,
      required this.time,
      required this.price,
      required this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 192,
        width: 172,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(url),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 45, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    // width: 25,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      Image.asset("assets/images/ethereum.png"),
                      const Text(
                        "15.5",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
