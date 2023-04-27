import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NftCard extends StatelessWidget {
  const NftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 219,
        margin: const EdgeInsets.only(right: 16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/nft1.png"),
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
                    children: const [
                      Text("Doodles #7575"),
                      Text("04 : 02 : 08")
                    ],
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
