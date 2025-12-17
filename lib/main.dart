import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Tour Demo',
      home: const PlaceListPage(),
    );
  }
}

class PlaceListPage extends StatelessWidget {
  const PlaceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> places = [
      {'name': 'Palace', 'desc': 'Traditional architecture'},
      {'name': 'Museum', 'desc': 'History and art'},
      {'name': 'Beach', 'desc': 'Sea and sunset'},
      {'name': 'Market', 'desc': 'Street food'},
      {'name': 'Tower', 'desc': 'City view'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Places'),
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            child: ListTile(
              title: Text(place['name']!),
              subtitle: Text(place['desc']!),
            ),
          );
        },
      ),
    );
  }
}
