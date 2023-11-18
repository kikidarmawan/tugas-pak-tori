import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbed View'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
// Isi dari Tab 1
            Center(
              child: Text('Content for Tab 1'),
            ),
// Isi dari Tab 2
            Center(
              child: Text('Content for Tab 2'),
            ),
// Isi dari Tab 3
            Center(
              child: Text('Content for Tab 3'),
            ),
          ],
        ),
      ),
    );
  }
}
