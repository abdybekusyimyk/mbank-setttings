import 'package:flutter/material.dart';
import 'package:mbank/modules/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
final tst = 10;
  const pi = 3.24;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            Text('Syimyk'),
            Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        actions: const [
          Icon(
            Icons.chat_rounded,
            color: Colors.green,
          ),
          Icon(
            Icons.notifications,
            color: Colors.green,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 110,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
                Container(
                  width: 150,
                  height: 110,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    height: 140,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 140,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 тилке
                mainAxisExtent: 140,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
              ),
              itemCount: 6, // 6 элемент
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      'Item ${index + 1}',
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
            const Text(
              'Best selling product in the Market',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
