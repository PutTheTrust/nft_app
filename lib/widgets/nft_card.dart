import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String title;
  final String time;
  final String price;
  final String url;

  const NftCard(
      {super.key,
      required this.title,
      required this.time,
      required this.price,
      required this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 219,
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
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(title), Text(time)],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      Image.asset("assets/images/ethereum.png"),
                      const Text(
                        "15.5",
                        style: TextStyle(color: Colors.white),
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
