import 'package:flutter/material.dart';
import 'package:flutter_dev/pages/HomeWidget.dart';
import 'package:flutter_dev/style/style.dart' as theme;

import 'package:http/http.dart' as http;
import 'dart:convert';

// TODO(human): Post 모델 import 추가
import 'package:flutter_dev/models/post.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), theme: theme.theme));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

/*
1. 현재 UI의 현재 상태를 저장할 state를 만들어둡니다
2. 그 state에 따라서 현재 UI가 어떻게 보일지 코드짜놓으면 됩니다.
3. 유저가 state 쉽게 조작할 수 있는 기능도 개발해놓습니다.
*/

class _MyAppState extends State<MyApp> {
  /*
  0은 홈, 1은 쇼핑
  */
  int tabState = 0;

  List<Post> posts = [];

  getData() async {
    /*
    * API 호출부
    */
    var res = await http.get(
      Uri.parse('https://codingapple1.github.io/app/data.json'),
    );

    // 1. jsonDecode(result.body)를 List<dynamic>으로 받기
    // 2. map()과 Post.fromJson()을 사용해서 List<Post>로 변환
    //// 3. setState(() { posts = 변환된리스트; })
    List<dynamic> temp = jsonDecode(res.body);
    setState(() {
      posts = temp.map((e) => Post.fromJson(e)).toList();
    });
    print('여기에용');
    print(posts[0].content);
  }

  /*
  * 초기 실행
  */
  @override
  void initState() {
    super.initState();

    getData();
  }

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
      body: [HomeWidget(posts: posts), Text('샵페이지')][tabState],
      bottomNavigationBar: Theme(
        data: theme.bottomBarTheme,
        child: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              tabState = idx;
            });
          },
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
