import 'package:flutter/material.dart';
import 'package:nft_app/widgets/input_field.dart';
import 'package:nft_app/widgets/nft_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                  "Popular",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NftCard(),
                  NftCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
