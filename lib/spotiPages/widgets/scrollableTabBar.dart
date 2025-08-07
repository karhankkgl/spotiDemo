import 'package:flutter/material.dart';

class CustomTabInsideColumn extends StatelessWidget {
  const CustomTabInsideColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // tab sayısı
      child: Scaffold(
        appBar: AppBar(title: const Text("Ana Ekran")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TabBar'ı Column içine widget gibi ekliyoruz
            const TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Pop"),
                Tab(text: "Rock"),
                Tab(text: "Jazz"),
                Tab(text: "HipHop"),
                Tab(text: "Blues"),
              ],
            ),

            // İçeriği göstermek için Expanded içinde TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Pop Content")),
                  Center(child: Text("Rock Content")),
                  Center(child: Text("Jazz Content")),
                  Center(child: Text("HipHop Content")),
                  Center(child: Text("Blues Content")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
