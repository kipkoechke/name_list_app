import 'package:flutter/material.dart';

class NameList extends StatefulWidget {
  const NameList({super.key});

  @override
  State<NameList> createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  final List<String> _names = ['Kelvin', 'Florencia', 'Bellon'];

  void _addName() {
    setState(() {
      _names.add('New name');
    });
  }

  void _removeName(int index) {
    setState(() {
      _names.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name List App'),
      ),
      body: ListView.builder(
        itemCount: _names.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_names[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => _removeName(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addName,
        tooltip: 'Add Name',
        child: const Icon(Icons.add),
      ),
    );
  }
}
