import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
