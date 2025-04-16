import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _isExpanded = false;
  String _fabMessage = '';

  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
      _fabMessage = '';
    });
  }

  void _toggleFabMenu() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _onFabAction(String action) {
    setState(() {
      _fabMessage = 'FAB: $action';
    });
  }

  Widget _buildFabActions() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          heroTag: 'fab1',
          mini: true,
          onPressed: () => _onFabAction('email'),
          child: Icon(Icons.email),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          heroTag: 'fab2',
          mini: true,
          onPressed: () => _onFabAction('ligar'),
          child: Icon(Icons.call),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          heroTag: 'fab3',
          mini: true,
          onPressed: () => _onFabAction('mensagem'),
          child: Icon(Icons.message),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aula 04 - BRADEMO')),
      body: Center(
        child: Text(
          _fabMessage.isNotEmpty
              ? _fabMessage
              : 'TAB: ${_selectedIndex + 1}',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_isExpanded) _buildFabActions(),
            FloatingActionButton(
              onPressed: _toggleFabMenu,
              child: Icon(_isExpanded ? Icons.close : Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () => _selectTab(0),
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () => _selectTab(1),
              ),
              SizedBox(width: 40),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () => _selectTab(2),
              ),
              IconButton(
                icon: Icon(Icons.info, color: Colors.white),
                onPressed: () => _selectTab(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}