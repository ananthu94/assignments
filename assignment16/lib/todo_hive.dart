import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todo_box');
  runApp(MaterialApp(
    home: Todohive(),
  ));
}

class Todohive extends StatefulWidget {
  @override
  State<Todohive> createState() => _TodohiveState();
}

class _TodohiveState extends State<Todohive> {
  List<Map<String, dynamic>> items = [];
  final todobox = Hive.box('todo_box');

  @override
  void initState() {
    super.initState();
    refreshUi();
  }

  void refreshUi() {
    final data = todobox.keys.map((key) {
      final item = todobox.get(key);
      return {
        'key': key,
        'title': item['title'],
        'description': item['description']
      };
    }).toList();
    setState(() {
      items = data.reversed.toList();
    });
  }

  Future<void> create(Map<String, String> newItem) async {
    await todobox.add(newItem);
    refreshUi();
  }

  Future<void> update(int itemKey, Map<String, String> singleItem) async {
    await todobox.put(itemKey, singleItem);
    refreshUi();
  }

  Future<void> delete(int itemKey) async {
    await todobox.delete(itemKey);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('SUCCESSFULLY DELETED')));
    refreshUi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hive Sample TODO')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final currentItems = items[index];
          return Card(
            color: Colors.blueGrey,
            child: ListTile(
              title: Text(currentItems['title']),
              subtitle: Text(currentItems['description'].toString()),
              trailing: SizedBox(
                width: 100,
                child: Row(children: [
                  IconButton(
                      onPressed: () {
                        text_sheet(context, currentItems['key']);
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                    onPressed: () {
                      delete(currentItems['key']);
                    },
                    icon: Icon(Icons.delete),
                  )
                ]),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          text_sheet(context, null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  void text_sheet(BuildContext ctx, int? itemKey) async {
    if (itemKey != null) {
      final existingData =
          items.firstWhere((element) => element['key'] == itemKey);
      titleController.text = existingData['title'];
      descriptionController.text = existingData['description'];
    }

    showModalBottomSheet(
      isScrollControlled: true,
      context: ctx,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom + 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(hintText: 'Title'),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(hintText: 'Description'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (itemKey == null) {
                    create({
                      'title': titleController.text,
                      'description': descriptionController.text
                    });
                  } else {
                    update(itemKey, {
                      'title': titleController.text.trim(),
                      'description': descriptionController.text.trim()
                    });
                  }

                  titleController.text = '';
                  descriptionController.text = '';
                  Navigator.of(context).pop();
                },
                child: Text((itemKey == null) ? 'Save' : 'Update'))
          ],
        ),
      ),
    );
  }
}
