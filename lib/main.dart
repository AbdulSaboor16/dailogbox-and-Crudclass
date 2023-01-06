import 'package:flutter/material.dart';
import 'package:sundayclass/alert_dialog_view.dart';
import 'package:sundayclass/row_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogView(),
    );
  }
}