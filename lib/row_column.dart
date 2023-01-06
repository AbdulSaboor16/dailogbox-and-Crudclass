import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RowList extends StatefulWidget {
  const RowList({super.key});

  @override
  State<RowList> createState() => _RowListState();
}

class _RowListState extends State<RowList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            custombanner(),
            ListView.builder(
               
              shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                        height: 150,
                        width: 100,
                        color: Colors.pink,
                margin: new EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}


custombanner(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
      Container(
        width: 270,
        height: 100,
        color: Colors.red,
         margin: EdgeInsets.symmetric(horizontal: 10),
      ),
      Container(
        width: 270,
        height: 100,
        color: Color.fromARGB(255, 97, 79, 77),
         margin: EdgeInsets.symmetric(horizontal: 10),
      ),
      Container(
        width: 290,
        height: 100,
        color: Color.fromARGB(255, 120, 204, 23),
         margin: EdgeInsets.symmetric(horizontal: 10),
      ),
    ],
    ),
  );
}