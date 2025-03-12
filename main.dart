import 'package:flutter/material.dart';
import 'widgets/day_row.dart';
import 'widgets/section.dart';
import 'widgets/bullet_item.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Achieve Your Potential',
      theme: ThemeData(
        fontFamily: 'SF Pro', // Use iOS system font
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Achieve Your Potential!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DayRow(),
              const Divider(height: 40),
              Section(
                title: '10Ox Sit-Ups',
                children: const [
                  BulletItem(text: 'Read 10 pages of book'),
                  BulletItem(text: 'Day Stroak'),
                ],
              ),
              const Divider(height: 40),
              Section(
                title: 'Learn HTML & CSS',
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Personal',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ...List.generate(
                    5,
                    (index) => const BulletItem(text: 'Here\'s a task item'),
                  ),
                ],
              ),
              const Divider(height: 40),
              Section(
                title: 'Don\'t bound',
                titleSize: 18,
                children: const [
                  BulletItem(text: 'To-do (Inst.)'),
                  BulletItem(text: 'Holate'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
