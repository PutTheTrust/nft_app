import 'package:flutter/material.dart';
import 'package:nft_app/widgets/input_field.dart';
import 'package:nft_app/widgets/nft_card.dart';

import '../widgets/hot_nft_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List nfts = [
    ["Doodles #7575", "04 : 02 : 08", "20.8", "assets/images/nft1.png"],
    ["Doodles #862", "04 : 02 : 08", "15.5", "assets/images/nft2.png"],
  ];

  // ignore: constant_identifier_names
  static const List hot_nfts = [
    ["Doodles #862", "04 : 02 : 08", "10.2", "assets/images/nft3.png"],
    ["Doodles #862", "04 : 02 : 08", "10.2", "assets/images/nft4.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/user.png"),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome,",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Vitamin Moly ✨",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const InputField(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular Now",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 260,
                  // color: Colors.green,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: nfts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (NftCard(
                        title: nfts[index][0],
                        time: nfts[index][1],
                        price: nfts[index][2],
                        url: nfts[index][3],
                      ));
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Hot Deals",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 260,
                  // color: Colors.green,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hot_nfts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (HotNftCard(
                        title: hot_nfts[index][0],
                        time: hot_nfts[index][1],
                        price: hot_nfts[index][2],
                        url: hot_nfts[index][3],
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
