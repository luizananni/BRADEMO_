import 'package:flutter/material.dart';

void main() {
  runApp(MyTaskApp());
}

class MyTaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      home: TaskHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TaskHomePage extends StatefulWidget {
  @override
  _TaskHomePageState createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  List<bool> _isCheckedList = List.generate(5, (_) => false);
  bool _showOnlyCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _showOnlyCompleted = !_showOnlyCompleted;
                });
              },
              child: Text(
                _showOnlyCompleted ? "Ver Todas as Tarefas" : "Ver Tarefas Concluídas",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Você tem ${_isCheckedList.where((e) => !e).length} tarefas não concluídas :(",
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _isCheckedList.length,
              itemBuilder: (context, index) {
                if (_showOnlyCompleted && !_isCheckedList[index]) {
                  return SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 4.0),
                  child: Card(
                    color: _isCheckedList[index]
                        ? Colors.greenAccent
                        : Colors.amberAccent,
                    child: ListTile(
                      title: Text("Tarefa $index"),
                      trailing: Checkbox(
                        value: _isCheckedList[index],
                        onChanged: (value) {
                          setState(() {
                            _isCheckedList[index] = value!;
                          });
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Aviso! "),
                content: Text("Você está no App de Notas de Tarefas."),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("Ok"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}