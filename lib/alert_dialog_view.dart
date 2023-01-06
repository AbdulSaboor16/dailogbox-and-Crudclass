import 'package:flutter/material.dart';
import 'package:sundayclass/crud.dart';


class AlertDialogView extends StatefulWidget {
  const AlertDialogView({super.key});

  @override
  State<AlertDialogView> createState() => _AlertDialogViewState();
}

class _AlertDialogViewState extends State<AlertDialogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                // barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    
                    title: Text("my text",style: TextStyle(color: Colors.white),),
                    content: Text("this is my message",style: TextStyle(color: Colors.white),),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('cancel',style: TextStyle(color: Colors.white),),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('ok',style: TextStyle(color: Colors.white),),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Crud()),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text("login")),
      ),
    );
  }
}
