import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Ex04 - BRADEMO',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 18),
        ),
      ),
      home: ResponsiveHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  final List<String> languages = ['Dart', 'JavaScript', 'PHP', 'C++'];

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Ex04 - BRADEMO'),
        centerTitle: true,
      ),
      body: Center(
        child: isLandscape
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildLeftSection(context),
                  buildRightSection(),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildLeftSection(context),
                  const SizedBox(height: 20),
                  buildRightSection(),
                ],
              ),
      ),
    );
  }

  Widget buildLeftSection(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Cheetah Coding', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        ElevatedButton(onPressed: () {}, child: const Text('Botão 01')),
        const SizedBox(height: 8),
        ElevatedButton(onPressed: () {}, child: const Text('Botão 02')),
      ],
    );
  }

  Widget buildRightSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: languages
          .map((lang) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  color: Colors.black12,
                  child: Text(lang, style: const TextStyle(fontSize: 18)),
                ),
              ))
          .toList(),
    );
  }
}