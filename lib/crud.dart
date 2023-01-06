import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  addUser() {
    setState(() {
      if (nameTextController.text != "") {
        names.add(nameTextController.text);
      }
      nameTextController.clear();
    });
  }

  addUpdate(abc) {
    setState(() {
      names[abc] = "value change";
    });
  }

  adddelete(ab) {
    setState(() {
      names.removeAt(ab);
    });
  }

  TextEditingController nameTextController = TextEditingController();
  List names = ["saboor", "ali", "saad"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: nameTextController,
          decoration: const InputDecoration(
            hintText: 'Enter Your Name',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              addUser();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: IconButton(
              onPressed: () {
                addUpdate(index);
              },
              icon: Icon(Icons.edit),
            ),
            title: Text(names[index]),
            trailing: IconButton(
              onPressed: () {
                adddelete(index);
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
