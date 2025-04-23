import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ex06 - BRADEMO',
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ex06 - BRADEMO'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlXRcVrKRUHqmTH2gZvy5q0bqyp74__nqdVA&s',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }

  Widget get titleSection {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bragança Paulista',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'São Paulo, Brasil',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.yellow),
          const Text('10'),
        ],
      ),
    );
  }

  Widget get buttonSection {
    Color color = Colors.blue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CONHECER'),
        _buildButtonColumn(color, Icons.near_me, 'ROTAS'),
        _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
      ],
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget get textSection {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Bragança Paulista é uma cidade localizada no interior de São Paulo, '
        'conhecida como a “Capital da Linguiça”.'
        'Ela é ideal para quem busca tranquilidade, história e boa culinária no interior paulista.'
        'Além disso, o time da cidade é o RedBull Bragantino, participando dos maiores campeonatos brasileiros.',
        softWrap: true,
      ),
    );
  }
}