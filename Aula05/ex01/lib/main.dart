import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melhores figurinhas de bichinhos',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: GridScreen(),
    );
  }
}

class GridScreen extends StatelessWidget {
  final List<Map<String, String>> imagens = [
    {
      'imagem': 'https://vetplus.vet.br/wp-content/uploads/2019/12/meme-da-mulher-gritando-com-o-gato-na-mesa-og-1080x630.jpg',
      'titulo': 'Gatinho bravo',
    },
    {
      'imagem': 'https://stickers.pw/wp-content/uploads/2024/09/whats_stickers_animals_featuaed.jpg',
      'titulo': 'Gatinho bobo',
    },
    {
      'imagem': 'https://i.pinimg.com/736x/c7/12/89/c71289d1514eb1782ec55b2df1d067ed.jpg',
      'titulo': 'Cachorro de TI',
    },
    {
      'imagem': 'https://i.pinimg.com/736x/8b/16/a8/8b16a80af797ff95ac566e18213de83b.jpg',
      'titulo': 'Cachorro Fantasma',
    },
    {
      'imagem': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQUZW4oc2zFkWwCtvGVy8iWIyZSmg70mhd4Q&s',
      'titulo': 'Cachorro Julgador',
    },
    {
      'imagem': 'https://vetplus.vet.br/wp-content/uploads/2019/12/img_2427.jpg',
      'titulo': 'Gatinho com nojo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Melhores figurinhas de bichinhos')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imagens.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      imagens[index]['imagem']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      child: Text(
                        imagens[index]['titulo']!,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}