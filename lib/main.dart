import 'package:flutter/material.dart';
import 'package:flutter_dev/style/style.dart' as theme;

void main() {
  runApp(MaterialApp(home: MyApp(), theme: theme.theme));
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
      body: TextButton(onPressed: () {}, child: Text('data')),
      bottomNavigationBar: Theme(
        data: theme.bottomBarTheme,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
