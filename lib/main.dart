import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), theme: ThemeData()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        /* 아이폰은 가운데가 디폴트, 안드는 왼쪽임*/
        title: Text("Test"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
        ],
      ),
      body: Text('data'),
    );
  }
}
